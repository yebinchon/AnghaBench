
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int __be16 ;


 int ENOMEM ;
 int REG_RD ;
 int RSSI_LVL_GET ;
 int be16_to_cpu (int ) ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;
 int fmerr (char*) ;

int fm_rx_get_rssi_level(struct fmdev *fmdev, u16 *rssilvl)
{
 __be16 curr_rssi_lel;
 u32 resp_len;
 int ret;

 if (rssilvl == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 ret = fmc_send_cmd(fmdev, RSSI_LVL_GET, REG_RD, ((void*)0), 2,
   &curr_rssi_lel, &resp_len);
 if (ret < 0)
  return ret;

 *rssilvl = be16_to_cpu(curr_rssi_lel);

 return 0;
}
