
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_dcb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* query_hw_capability ) (struct qlcnic_dcb*,char*) ;} ;


 int stub1 (struct qlcnic_dcb*,char*) ;

__attribute__((used)) static inline int
qlcnic_dcb_query_hw_capability(struct qlcnic_dcb *dcb, char *buf)
{
 if (dcb && dcb->ops->query_hw_capability)
  return dcb->ops->query_hw_capability(dcb, buf);

 return 0;
}
