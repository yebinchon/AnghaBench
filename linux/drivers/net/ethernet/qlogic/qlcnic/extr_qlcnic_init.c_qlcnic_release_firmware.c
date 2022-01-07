
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int * fw; } ;


 int release_firmware (int *) ;

void
qlcnic_release_firmware(struct qlcnic_adapter *adapter)
{
 release_firmware(adapter->fw);
 adapter->fw = ((void*)0);
}
