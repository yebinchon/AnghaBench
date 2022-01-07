
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int open_device_map; } ;


 int OFFLOAD_DEVMAP_BIT ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int offload_running(struct adapter *adapter)
{
 return test_bit(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map);
}
