
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {int dummy; } ;


 int BE_READ_SEEPROM_LEN ;
 int LANCER_VPD_PF_FILE ;
 int LANCER_VPD_VF_FILE ;
 int MAX_PRIVILEGES ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int check_privilege (struct be_adapter*,int ) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int lancer_cmd_get_file_len (struct be_adapter*,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_eeprom_len(struct net_device *netdev)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 if (!check_privilege(adapter, MAX_PRIVILEGES))
  return 0;

 if (lancer_chip(adapter)) {
  if (be_physfn(adapter))
   return lancer_cmd_get_file_len(adapter,
             LANCER_VPD_PF_FILE);
  else
   return lancer_cmd_get_file_len(adapter,
             LANCER_VPD_VF_FILE);
 } else {
  return BE_READ_SEEPROM_LEN;
 }
}
