
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1_adapter {int hw; } ;


 int atl1_init_hw (int *) ;
 int atl1_reset_hw (int *) ;

__attribute__((used)) static int atl1_reset(struct atl1_adapter *adapter)
{
 int ret;
 ret = atl1_reset_hw(&adapter->hw);
 if (ret)
  return ret;
 return atl1_init_hw(&adapter->hw);
}
