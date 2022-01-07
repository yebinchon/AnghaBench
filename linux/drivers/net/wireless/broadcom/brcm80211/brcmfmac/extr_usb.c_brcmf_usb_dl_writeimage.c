
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef scalar_t__ u32 ;
struct rdl_state_le {int bytes; int state; } ;
struct brcmf_usbdev_info {int dummy; } ;
typedef int state ;


 scalar_t__ DL_BAD_CRC ;
 scalar_t__ DL_BAD_HDR ;
 int DL_GETSTATE ;
 int DL_START ;
 scalar_t__ DL_WAITING ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned int TRX_RDL_CHUNK ;
 int USB ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*,...) ;
 int brcmf_usb_dl_cmd (struct brcmf_usbdev_info*,int ,struct rdl_state_le*,int) ;
 scalar_t__ brcmf_usb_dl_send_bulk (struct brcmf_usbdev_info*,char*,unsigned int) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (char*,char*,unsigned int) ;

__attribute__((used)) static int
brcmf_usb_dl_writeimage(struct brcmf_usbdev_info *devinfo, u8 *fw, int fwlen)
{
 unsigned int sendlen, sent, dllen;
 char *bulkchunk = ((void*)0), *dlpos;
 struct rdl_state_le state;
 u32 rdlstate, rdlbytes;
 int err = 0;

 brcmf_dbg(USB, "Enter, fw %p, len %d\n", fw, fwlen);

 bulkchunk = kmalloc(TRX_RDL_CHUNK, GFP_ATOMIC);
 if (bulkchunk == ((void*)0)) {
  err = -ENOMEM;
  goto fail;
 }


 brcmf_usb_dl_cmd(devinfo, DL_START, &state, sizeof(state));

 rdlstate = le32_to_cpu(state.state);
 rdlbytes = le32_to_cpu(state.bytes);


 if (rdlstate != DL_WAITING) {
  brcmf_err("Failed to DL_START\n");
  err = -EINVAL;
  goto fail;
 }
 sent = 0;
 dlpos = fw;
 dllen = fwlen;


 while (rdlbytes != dllen) {


  if ((rdlbytes == sent) && (rdlbytes != dllen)) {
   if ((dllen-sent) < TRX_RDL_CHUNK)
    sendlen = dllen-sent;
   else
    sendlen = TRX_RDL_CHUNK;





   if (!(sendlen % 64))
    sendlen -= 4;


   memcpy(bulkchunk, dlpos, sendlen);
   if (brcmf_usb_dl_send_bulk(devinfo, bulkchunk,
         sendlen)) {
    brcmf_err("send_bulk failed\n");
    err = -EINVAL;
    goto fail;
   }

   dlpos += sendlen;
   sent += sendlen;
  }
  err = brcmf_usb_dl_cmd(devinfo, DL_GETSTATE, &state,
           sizeof(state));
  if (err) {
   brcmf_err("DL_GETSTATE Failed\n");
   goto fail;
  }

  rdlstate = le32_to_cpu(state.state);
  rdlbytes = le32_to_cpu(state.bytes);


  if (rdlstate == DL_BAD_HDR || rdlstate == DL_BAD_CRC) {
   brcmf_err("Bad Hdr or Bad CRC state %d\n",
      rdlstate);
   err = -EINVAL;
   goto fail;
  }
 }

fail:
 kfree(bulkchunk);
 brcmf_dbg(USB, "Exit, err=%d\n", err);
 return err;
}
