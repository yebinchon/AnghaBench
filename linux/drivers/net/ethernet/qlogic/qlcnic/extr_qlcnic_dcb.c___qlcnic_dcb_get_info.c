
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_dcb {int dummy; } ;


 int qlcnic_dcb_get_cee_cfg (struct qlcnic_dcb*) ;
 int qlcnic_dcb_get_hw_capability (struct qlcnic_dcb*) ;

__attribute__((used)) static void __qlcnic_dcb_get_info(struct qlcnic_dcb *dcb)
{
 qlcnic_dcb_get_hw_capability(dcb);
 qlcnic_dcb_get_cee_cfg(dcb);
}
