
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_dcb {int adapter; scalar_t__ param; } ;


 int qlcnic_dcb_data_cee_param_map (int ) ;
 int qlcnic_dcb_query_cee_param (struct qlcnic_dcb*,char*,int ) ;

__attribute__((used)) static int qlcnic_83xx_dcb_get_cee_cfg(struct qlcnic_dcb *dcb)
{
 int err;

 err = qlcnic_dcb_query_cee_param(dcb, (char *)dcb->param, 0);
 if (err)
  return err;

 qlcnic_dcb_data_cee_param_map(dcb->adapter);

 return err;
}
