
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct enetc_si {TYPE_1__* pdev; int hw; } ;
struct enetc_msg_swbd {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENETC_SIMSGSR_GET_MC (int) ;
 int ENETC_VSIMSGSR ;
 int ENETC_VSIMSGSR_MB ;
 int ENETC_VSIMSGSR_MS ;
 int ETIMEDOUT ;
 int dev_err (int *,char*,int ) ;
 int enetc_msg_vsi_write_msg (int *,struct enetc_msg_swbd*) ;
 int enetc_rd (int *,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int enetc_msg_vsi_send(struct enetc_si *si, struct enetc_msg_swbd *msg)
{
 int timeout = 100;
 u32 vsimsgsr;

 enetc_msg_vsi_write_msg(&si->hw, msg);

 do {
  vsimsgsr = enetc_rd(&si->hw, ENETC_VSIMSGSR);
  if (!(vsimsgsr & ENETC_VSIMSGSR_MB))
   break;

  usleep_range(1000, 2000);
 } while (--timeout);

 if (!timeout)
  return -ETIMEDOUT;


 if (vsimsgsr & ENETC_VSIMSGSR_MS) {
  dev_err(&si->pdev->dev, "VSI command execute error: %d\n",
   ENETC_SIMSGSR_GET_MC(vsimsgsr));
  return -EIO;
 }

 return 0;
}
