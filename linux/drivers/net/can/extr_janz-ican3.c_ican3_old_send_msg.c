
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ican3_msg {int dummy; } ;
struct ican3_dev {scalar_t__ dpm; int ndev; } ;


 int ENOMEM ;
 scalar_t__ MSYNC_LOCL ;
 scalar_t__ MSYNC_PEER ;
 int MSYNC_WB0 ;
 int MSYNC_WB1 ;
 int MSYNC_WBLW ;
 int MSYNC_WB_MASK ;
 unsigned int QUEUE_OLD_CONTROL ;
 unsigned int QUEUE_OLD_WB0 ;
 unsigned int QUEUE_OLD_WB1 ;
 int ican3_set_page (struct ican3_dev*,unsigned int) ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 int memcpy_toio (scalar_t__,struct ican3_msg*,int) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int ican3_old_send_msg(struct ican3_dev *mod, struct ican3_msg *msg)
{
 unsigned int mbox, mbox_page;
 u8 locl, peer, xord;


 ican3_set_page(mod, QUEUE_OLD_CONTROL);
 peer = ioread8(mod->dpm + MSYNC_PEER);
 locl = ioread8(mod->dpm + MSYNC_LOCL);
 xord = locl ^ peer;

 if ((xord & MSYNC_WB_MASK) == MSYNC_WB_MASK) {
  netdev_err(mod->ndev, "no mbox for writing\n");
  return -ENOMEM;
 }


 mbox = (xord & MSYNC_WB0) ? MSYNC_WB1 : MSYNC_WB0;


 mbox_page = (mbox == MSYNC_WB0) ? QUEUE_OLD_WB0 : QUEUE_OLD_WB1;
 ican3_set_page(mod, mbox_page);
 memcpy_toio(mod->dpm, msg, sizeof(*msg));

 locl ^= mbox;
 if (mbox == MSYNC_WB1)
  locl |= MSYNC_WBLW;

 ican3_set_page(mod, QUEUE_OLD_CONTROL);
 iowrite8(locl, mod->dpm + MSYNC_LOCL);
 return 0;
}
