
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int __be16 ;


 int ENOMEM ;
 int MOST_MODE_SET ;
 int REG_RD ;
 int be16_to_cpu (int ) ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;
 int fmerr (char*) ;

int fm_rx_get_stereo_mono(struct fmdev *fmdev, u16 *mode)
{
 __be16 curr_mode;
 u32 resp_len;
 int ret;

 if (mode == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 ret = fmc_send_cmd(fmdev, MOST_MODE_SET, REG_RD, ((void*)0), 2,
   &curr_mode, &resp_len);
 if (ret < 0)
  return ret;

 *mode = be16_to_cpu(curr_mode);

 return 0;
}
