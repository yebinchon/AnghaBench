
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int MUTE ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;
 int fmdbg (char*,int ) ;

int fm_tx_set_mute_mode(struct fmdev *fmdev, u8 mute_mode_toset)
{
 u16 payload;
 int ret;

 fmdbg("tx: mute mode %d\n", mute_mode_toset);

 payload = mute_mode_toset;
 ret = fmc_send_cmd(fmdev, MUTE, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
