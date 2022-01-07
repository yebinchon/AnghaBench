
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct be_port_resources {int nic_pfs; int max_vfs; int member_0; } ;
struct TYPE_2__ {int max_rss_tables; } ;
struct be_adapter {TYPE_1__ pool_res; } ;


 int MAX_PORT_RSS_TABLES ;
 int RESOURCE_LIMITS ;
 int SAVED_PROFILE_TYPE ;
 int be_cmd_get_profile_config (struct be_adapter*,int *,struct be_port_resources*,int ,int ,int ) ;
 int be_max_vfs (struct be_adapter*) ;

__attribute__((used)) static void be_calculate_pf_pool_rss_tables(struct be_adapter *adapter)
{
 struct be_port_resources port_res = {0};
 u8 rss_tables_on_port;
 u16 max_vfs = be_max_vfs(adapter);

 be_cmd_get_profile_config(adapter, ((void*)0), &port_res, SAVED_PROFILE_TYPE,
      RESOURCE_LIMITS, 0);

 rss_tables_on_port = MAX_PORT_RSS_TABLES - port_res.nic_pfs;




 adapter->pool_res.max_rss_tables =
  max_vfs * rss_tables_on_port / port_res.max_vfs;
}
