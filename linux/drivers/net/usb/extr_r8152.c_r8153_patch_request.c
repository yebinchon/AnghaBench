
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int netdev; } ;


 int ETIME ;
 int OCP_PHY_PATCH_CMD ;
 int OCP_PHY_PATCH_STAT ;
 int PATCH_READY ;
 int PATCH_REQUEST ;
 int drv ;
 int netif_err (struct r8152*,int ,int ,char*) ;
 int ocp_reg_read (struct r8152*,int ) ;
 int ocp_reg_write (struct r8152*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int r8153_patch_request(struct r8152 *tp, bool request)
{
 u16 data;
 int i;

 data = ocp_reg_read(tp, OCP_PHY_PATCH_CMD);
 if (request)
  data |= PATCH_REQUEST;
 else
  data &= ~PATCH_REQUEST;
 ocp_reg_write(tp, OCP_PHY_PATCH_CMD, data);

 for (i = 0; request && i < 5000; i++) {
  usleep_range(1000, 2000);
  if (ocp_reg_read(tp, OCP_PHY_PATCH_STAT) & PATCH_READY)
   break;
 }

 if (request && !(ocp_reg_read(tp, OCP_PHY_PATCH_STAT) & PATCH_READY)) {
  netif_err(tp, drv, tp->netdev, "patch request fail\n");
  r8153_patch_request(tp, 0);
  return -ETIME;
 } else {
  return 0;
 }
}
