
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;


 int JME_SMBCSR ;
 int JME_SMB_LEN ;
 int SMBCSR_EEPROMD ;
 int jread32 (struct jme_adapter*,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
jme_get_eeprom_len(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 u32 val;
 val = jread32(jme, JME_SMBCSR);
 return (val & SMBCSR_EEPROMD) ? JME_SMB_LEN : 0;
}
