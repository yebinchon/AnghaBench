
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_dcb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free ) (struct qlcnic_dcb*) ;} ;


 int stub1 (struct qlcnic_dcb*) ;

__attribute__((used)) static inline void qlcnic_dcb_free(struct qlcnic_dcb *dcb)
{
 if (dcb && dcb->ops->free)
  dcb->ops->free(dcb);
}
