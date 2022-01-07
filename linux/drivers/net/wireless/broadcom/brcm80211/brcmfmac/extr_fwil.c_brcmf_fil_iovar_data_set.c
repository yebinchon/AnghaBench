
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct brcmf_pub {int proto_block; int proto_buf; } ;
struct brcmf_if {int ifidx; struct brcmf_pub* drvr; } ;
typedef int s32 ;


 int BRCMF_C_SET_VAR ;
 int BRCMF_FIL_ON () ;
 int EPERM ;
 int FIL ;
 int MAX_HEX_DUMP_LEN ;
 int bphy_err (struct brcmf_pub*,char*) ;
 scalar_t__ brcmf_create_iovar (char*,void const*,scalar_t__,int ,int) ;
 int brcmf_dbg (int ,char*,int ,char*,scalar_t__) ;
 int brcmf_dbg_hex_dump (int ,void const*,int ,char*) ;
 int brcmf_fil_cmd_data (struct brcmf_if*,int ,int ,scalar_t__,int) ;
 int min_t (int ,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uint ;

s32
brcmf_fil_iovar_data_set(struct brcmf_if *ifp, char *name, const void *data,
    u32 len)
{
 struct brcmf_pub *drvr = ifp->drvr;
 s32 err;
 u32 buflen;

 mutex_lock(&drvr->proto_block);

 brcmf_dbg(FIL, "ifidx=%d, name=%s, len=%d\n", ifp->ifidx, name, len);
 brcmf_dbg_hex_dump(BRCMF_FIL_ON(), data,
      min_t(uint, len, MAX_HEX_DUMP_LEN), "data\n");

 buflen = brcmf_create_iovar(name, data, len, drvr->proto_buf,
        sizeof(drvr->proto_buf));
 if (buflen) {
  err = brcmf_fil_cmd_data(ifp, BRCMF_C_SET_VAR, drvr->proto_buf,
      buflen, 1);
 } else {
  err = -EPERM;
  bphy_err(drvr, "Creating iovar failed\n");
 }

 mutex_unlock(&drvr->proto_block);
 return err;
}
