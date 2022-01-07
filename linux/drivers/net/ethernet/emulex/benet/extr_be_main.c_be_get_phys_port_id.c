
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct netdev_phys_item_id {int id_len; scalar_t__* id; } ;
struct net_device {int dummy; } ;
struct be_adapter {int * serial_num; scalar_t__ hba_port_num; } ;


 int CNTL_SERIAL_NUM_WORDS ;
 int CNTL_SERIAL_NUM_WORD_SZ ;
 int ENOSPC ;
 int MAX_PHYS_ITEM_ID_LEN ;
 int memcpy (scalar_t__*,int *,int) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_phys_port_id(struct net_device *dev,
          struct netdev_phys_item_id *ppid)
{
 int i, id_len = CNTL_SERIAL_NUM_WORDS * CNTL_SERIAL_NUM_WORD_SZ + 1;
 struct be_adapter *adapter = netdev_priv(dev);
 u8 *id;

 if (MAX_PHYS_ITEM_ID_LEN < id_len)
  return -ENOSPC;

 ppid->id[0] = adapter->hba_port_num + 1;
 id = &ppid->id[1];
 for (i = CNTL_SERIAL_NUM_WORDS - 1; i >= 0;
      i--, id += CNTL_SERIAL_NUM_WORD_SZ)
  memcpy(id, &adapter->serial_num[i], CNTL_SERIAL_NUM_WORD_SZ);

 ppid->id_len = id_len;

 return 0;
}
