
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct brcmf_pub {struct brcmf_bus* bus_if; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_dload_data_le {int data; } ;
struct brcmf_bus {int dev; } ;
typedef int s32 ;
typedef int clm_name ;


 int BRCMF_FW_NAME_LEN ;
 int DL_BEGIN ;
 int DL_END ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INFO ;
 scalar_t__ MAX_CHUNK_LEN ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,int,...) ;
 int brcmf_bus_get_fwname (struct brcmf_bus*,char*,int *) ;
 int brcmf_c_download (struct brcmf_if*,int ,struct brcmf_dload_data_le*,scalar_t__) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_iovar_int_get (struct brcmf_if*,char*,scalar_t__*) ;
 int brcmf_info (char*,int) ;
 int firmware_request_nowarn (struct firmware const**,int *,int ) ;
 int kfree (struct brcmf_dload_data_le*) ;
 struct brcmf_dload_data_le* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int memset (int *,int ,int) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static int brcmf_c_process_clm_blob(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_bus *bus = drvr->bus_if;
 struct brcmf_dload_data_le *chunk_buf;
 const struct firmware *clm = ((void*)0);
 u8 clm_name[BRCMF_FW_NAME_LEN];
 u32 chunk_len;
 u32 datalen;
 u32 cumulative_len;
 u16 dl_flag = DL_BEGIN;
 u32 status;
 s32 err;

 brcmf_dbg(TRACE, "Enter\n");

 memset(clm_name, 0, sizeof(clm_name));
 err = brcmf_bus_get_fwname(bus, ".clm_blob", clm_name);
 if (err) {
  bphy_err(drvr, "get CLM blob file name failed (%d)\n", err);
  return err;
 }

 err = firmware_request_nowarn(&clm, clm_name, bus->dev);
 if (err) {
  brcmf_info("no clm_blob available (err=%d), device may have limited channels available\n",
      err);
  return 0;
 }

 chunk_buf = kzalloc(sizeof(*chunk_buf) + MAX_CHUNK_LEN - 1, GFP_KERNEL);
 if (!chunk_buf) {
  err = -ENOMEM;
  goto done;
 }

 datalen = clm->size;
 cumulative_len = 0;
 do {
  if (datalen > MAX_CHUNK_LEN) {
   chunk_len = MAX_CHUNK_LEN;
  } else {
   chunk_len = datalen;
   dl_flag |= DL_END;
  }
  memcpy(chunk_buf->data, clm->data + cumulative_len, chunk_len);

  err = brcmf_c_download(ifp, dl_flag, chunk_buf, chunk_len);

  dl_flag &= ~DL_BEGIN;

  cumulative_len += chunk_len;
  datalen -= chunk_len;
 } while ((datalen > 0) && (err == 0));

 if (err) {
  bphy_err(drvr, "clmload (%zu byte file) failed (%d)\n",
    clm->size, err);

  err = brcmf_fil_iovar_int_get(ifp, "clmload_status", &status);
  if (err)
   bphy_err(drvr, "get clmload_status failed (%d)\n", err);
  else
   brcmf_dbg(INFO, "clmload_status=%d\n", status);
  err = -EIO;
 }

 kfree(chunk_buf);
done:
 release_firmware(clm);
 return err;
}
