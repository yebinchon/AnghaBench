
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcb_common_cb {int dummy; } ;


 int RCB_COM_CFG_SYS_FSH_REG ;
 int dsaf_write_dev (struct rcb_common_cb*,int ,int) ;
 int wmb () ;

void hns_rcb_common_init_commit_hw(struct rcb_common_cb *rcb_common)
{
 wmb();
 dsaf_write_dev(rcb_common, RCB_COM_CFG_SYS_FSH_REG, 1);
 wmb();
}
