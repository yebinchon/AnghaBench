
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_dcb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* query_cee_param ) (struct qlcnic_dcb*,char*,int ) ;} ;


 int stub1 (struct qlcnic_dcb*,char*,int ) ;

__attribute__((used)) static inline int
qlcnic_dcb_query_cee_param(struct qlcnic_dcb *dcb, char *buf, u8 type)
{
 if (dcb && dcb->ops->query_cee_param)
  return dcb->ops->query_cee_param(dcb, buf, type);

 return 0;
}
