
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_adapter {int dummy; } ;


 int ETH_ALEN ;
 int be_cmd_get_mac_from_list (struct be_adapter*,int *,int*,int *,int,int ) ;
 int be_cmd_pmac_del (struct be_adapter*,int,int ,int ) ;
 int be_cmd_set_mac_list (struct be_adapter*,int *,int,int ) ;

int be_cmd_set_mac(struct be_adapter *adapter, u8 *mac, int if_id, u32 dom)
{
 bool active_mac = 0;
 u8 old_mac[ETH_ALEN];
 u32 pmac_id;
 int status;

 status = be_cmd_get_mac_from_list(adapter, old_mac, &active_mac,
       &pmac_id, if_id, dom);

 if (!status && active_mac)
  be_cmd_pmac_del(adapter, if_id, pmac_id, dom);

 return be_cmd_set_mac_list(adapter, mac, mac ? 1 : 0, dom);
}
