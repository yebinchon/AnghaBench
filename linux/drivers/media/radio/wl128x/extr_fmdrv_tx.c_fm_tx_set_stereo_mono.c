
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ aud_mode; } ;
struct fmdev {TYPE_1__ tx_data; } ;
typedef int payload ;


 int MONO_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmdbg (char*,scalar_t__) ;

int fm_tx_set_stereo_mono(struct fmdev *fmdev, u16 mode)
{
 u16 payload;
 int ret;

 if (fmdev->tx_data.aud_mode == mode)
  return 0;

 fmdbg("stereo mode: %d\n", mode);


 payload = (1 - mode);
 ret = fmc_send_cmd(fmdev, MONO_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmdev->tx_data.aud_mode = mode;

 return ret;
}
