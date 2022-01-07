
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fmdev {int curr_fmmode; } ;


 int EINVAL ;
 int FM_MODE_ENTRY_MAX ;



 int fm_power_down (struct fmdev*) ;
 int fm_power_up (struct fmdev*,int) ;
 int fmdbg (char*,...) ;
 int fmerr (char*) ;
 int load_default_rx_configuration (struct fmdev*) ;
 int msleep (int) ;

int fmc_set_mode(struct fmdev *fmdev, u8 fm_mode)
{
 int ret = 0;

 if (fm_mode >= FM_MODE_ENTRY_MAX) {
  fmerr("Invalid FM mode\n");
  return -EINVAL;
 }
 if (fmdev->curr_fmmode == fm_mode) {
  fmdbg("Already fm is in mode(%d)\n", fm_mode);
  return ret;
 }

 switch (fm_mode) {
 case 130:
  ret = fm_power_down(fmdev);
  if (ret < 0) {
   fmerr("Failed to set OFF mode\n");
   return ret;
  }
  break;

 case 128:
 case 129:

  if (fmdev->curr_fmmode != 130) {
   ret = fm_power_down(fmdev);
   if (ret < 0) {
    fmerr("Failed to set OFF mode\n");
    return ret;
   }
   msleep(30);
  }
  ret = fm_power_up(fmdev, fm_mode);
  if (ret < 0) {
   fmerr("Failed to load firmware\n");
   return ret;
  }
 }
 fmdev->curr_fmmode = fm_mode;


 if (fmdev->curr_fmmode == 129) {
  fmdbg("Loading default rx configuration..\n");
  ret = load_default_rx_configuration(fmdev);
  if (ret < 0)
   fmerr("Failed to load default values\n");
 }

 return ret;
}
