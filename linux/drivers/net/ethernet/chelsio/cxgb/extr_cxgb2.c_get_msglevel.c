
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {struct adapter* ml_priv; } ;
struct adapter {int msg_enable; } ;



__attribute__((used)) static u32 get_msglevel(struct net_device *dev)
{
 struct adapter *adapter = dev->ml_priv;

 return adapter->msg_enable;
}
