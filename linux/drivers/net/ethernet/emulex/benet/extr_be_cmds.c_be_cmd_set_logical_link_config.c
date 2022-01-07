
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct be_adapter {int dummy; } ;


 scalar_t__ BE2_chip (struct be_adapter*) ;
 int EOPNOTSUPP ;
 scalar_t__ MCC_STATUS_ILLEGAL_REQUEST ;
 int __be_cmd_set_logical_link_config (struct be_adapter*,int,int,int ) ;
 scalar_t__ base_status (int) ;

int be_cmd_set_logical_link_config(struct be_adapter *adapter,
       int link_state, u8 domain)
{
 int status;

 if (BE2_chip(adapter))
  return -EOPNOTSUPP;

 status = __be_cmd_set_logical_link_config(adapter, link_state,
        2, domain);




 if (base_status(status) == MCC_STATUS_ILLEGAL_REQUEST)
  status = __be_cmd_set_logical_link_config(adapter, link_state,
         1, domain);
 return status;
}
