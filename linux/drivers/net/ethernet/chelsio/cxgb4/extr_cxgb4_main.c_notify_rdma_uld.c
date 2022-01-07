
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {TYPE_1__* uld; } ;
typedef enum cxgb4_uld { ____Placeholder_cxgb4_uld } cxgb4_uld ;
typedef enum cxgb4_control { ____Placeholder_cxgb4_control } cxgb4_control ;
struct TYPE_2__ {scalar_t__ handle; int (* control ) (scalar_t__,int) ;} ;


 int CXGB4_ULD_RDMA ;
 int stub1 (scalar_t__,int) ;

__attribute__((used)) static void notify_rdma_uld(struct adapter *adap, enum cxgb4_control cmd)
{
 enum cxgb4_uld type = CXGB4_ULD_RDMA;

 if (adap->uld && adap->uld[type].handle)
  adap->uld[type].control(adap->uld[type].handle, cmd);
}
