
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;

__attribute__((used)) static void qlcnic_reset_api_lock(struct qlcnic_adapter *adapter)
{
 qlcnic_api_lock(adapter);
 qlcnic_api_unlock(adapter);
}
