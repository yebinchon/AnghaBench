
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u16 ;
struct fmtx_data {void* xmit_state; } ;
struct fmdev {int flag; int maintask_comp; struct fmtx_data tx_data; } ;
typedef int payload ;


 int ETIMEDOUT ;
 int FM_CORE_TX_XMITING ;
 int FM_DRV_TX_TIMEOUT ;
 void* FM_POW_ENB_EVENT ;
 int INT_MASK_SET ;
 int POWER_ENB_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,void**,int,int *,int *) ;
 int fmerr (char*,int) ;
 int init_completion (int *) ;
 int jiffies_to_msecs (int ) ;
 int set_bit (int ,int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int enable_xmit(struct fmdev *fmdev, u8 new_xmit_state)
{
 struct fmtx_data *tx = &fmdev->tx_data;
 unsigned long timeleft;
 u16 payload;
 int ret;


 payload = FM_POW_ENB_EVENT;
 ret = fmc_send_cmd(fmdev, INT_MASK_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 payload = new_xmit_state;
 ret = fmc_send_cmd(fmdev, POWER_ENB_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 init_completion(&fmdev->maintask_comp);
 timeleft = wait_for_completion_timeout(&fmdev->maintask_comp,
   FM_DRV_TX_TIMEOUT);
 if (!timeleft) {
  fmerr("Timeout(%d sec),didn't get tune ended interrupt\n",
      jiffies_to_msecs(FM_DRV_TX_TIMEOUT) / 1000);
  return -ETIMEDOUT;
 }

 set_bit(FM_CORE_TX_XMITING, &fmdev->flag);
 tx->xmit_state = new_xmit_state;

 return 0;
}
