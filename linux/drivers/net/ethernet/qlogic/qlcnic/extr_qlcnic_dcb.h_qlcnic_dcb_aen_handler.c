
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_dcb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* aen_handler ) (struct qlcnic_dcb*,void*) ;} ;


 int stub1 (struct qlcnic_dcb*,void*) ;

__attribute__((used)) static inline void qlcnic_dcb_aen_handler(struct qlcnic_dcb *dcb, void *msg)
{
 if (dcb && dcb->ops->aen_handler)
  dcb->ops->aen_handler(dcb, msg);
}
