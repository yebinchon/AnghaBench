
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_join_rsp_msg {int tx_mgmt_power; int status; } ;


 int EIO ;
 int WCN36XX_DBG_HAL ;
 int wcn36xx_dbg (int ,char*,int ,int ) ;
 scalar_t__ wcn36xx_smd_rsp_status_check (void*,size_t) ;

__attribute__((used)) static int wcn36xx_smd_join_rsp(void *buf, size_t len)
{
 struct wcn36xx_hal_join_rsp_msg *rsp;

 if (wcn36xx_smd_rsp_status_check(buf, len))
  return -EIO;

 rsp = (struct wcn36xx_hal_join_rsp_msg *)buf;

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal rsp join status %d tx_mgmt_power %d\n",
      rsp->status, rsp->tx_mgmt_power);

 return 0;
}
