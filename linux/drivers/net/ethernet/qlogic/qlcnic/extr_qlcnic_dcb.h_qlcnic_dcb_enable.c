
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_dcb {int dummy; } ;


 int qlcnic_clear_dcb_ops (struct qlcnic_dcb*) ;
 scalar_t__ qlcnic_dcb_attach (struct qlcnic_dcb*) ;

__attribute__((used)) static inline void qlcnic_dcb_enable(struct qlcnic_dcb *dcb)
{
 if (dcb && qlcnic_dcb_attach(dcb))
  qlcnic_clear_dcb_ops(dcb);
}
