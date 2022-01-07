
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ican3_dev {int num; int ndev; TYPE_1__* ctrl; int fwtype; int fwinfo; scalar_t__ dpm; } ;
struct TYPE_2__ {int int_enable; } ;


 int ENODEV ;
 scalar_t__ FIRMWARE_STAMP ;
 int ICAN3_FWTYPE_CAL_CANOPEN ;
 int ICAN3_FWTYPE_ICANOS ;
 int ican3_init_fast_host_interface (struct ican3_dev*) ;
 int ican3_init_new_host_interface (struct ican3_dev*) ;
 int ican3_msg_connect (struct ican3_dev*) ;
 int ican3_msg_fasthostif (struct ican3_dev*) ;
 int ican3_msg_newhostif (struct ican3_dev*) ;
 int ican3_reset_module (struct ican3_dev*) ;
 int ican3_set_buserror (struct ican3_dev*,int) ;
 int ican3_set_id_filter (struct ican3_dev*,int) ;
 int ican3_set_termination (struct ican3_dev*,int) ;
 int iowrite8 (int,int *) ;
 int memcpy_fromio (int ,scalar_t__,int) ;
 int netdev_err (int ,char*,...) ;
 scalar_t__ strncmp (int ,char*,int) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int ican3_startup_module(struct ican3_dev *mod)
{
 int ret;

 ret = ican3_reset_module(mod);
 if (ret) {
  netdev_err(mod->ndev, "unable to reset module\n");
  return ret;
 }


 memcpy_fromio(mod->fwinfo, mod->dpm + FIRMWARE_STAMP, sizeof(mod->fwinfo) - 1);
 if (strncmp(mod->fwinfo, "JANZ-ICAN3", 10)) {
  netdev_err(mod->ndev, "ICAN3 not detected (found %s)\n", mod->fwinfo);
  return -ENODEV;
 }
 if (strstr(mod->fwinfo, "CAL/CANopen"))
  mod->fwtype = ICAN3_FWTYPE_CAL_CANOPEN;
 else
  mod->fwtype = ICAN3_FWTYPE_ICANOS;


 iowrite8(1 << mod->num, &mod->ctrl->int_enable);

 ret = ican3_msg_connect(mod);
 if (ret) {
  netdev_err(mod->ndev, "unable to connect to module\n");
  return ret;
 }

 ican3_init_new_host_interface(mod);
 ret = ican3_msg_newhostif(mod);
 if (ret) {
  netdev_err(mod->ndev, "unable to switch to new-style interface\n");
  return ret;
 }


 ret = ican3_set_termination(mod, 1);
 if (ret) {
  netdev_err(mod->ndev, "unable to enable termination\n");
  return ret;
 }


 ret = ican3_set_buserror(mod, 1);
 if (ret) {
  netdev_err(mod->ndev, "unable to set bus-error\n");
  return ret;
 }

 ican3_init_fast_host_interface(mod);
 ret = ican3_msg_fasthostif(mod);
 if (ret) {
  netdev_err(mod->ndev, "unable to switch to fast host interface\n");
  return ret;
 }

 ret = ican3_set_id_filter(mod, 1);
 if (ret) {
  netdev_err(mod->ndev, "unable to set acceptance filter\n");
  return ret;
 }

 return 0;
}
