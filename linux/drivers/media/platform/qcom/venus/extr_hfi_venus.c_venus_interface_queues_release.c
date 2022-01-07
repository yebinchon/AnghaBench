
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int lock; int sfr; int ifaceq_table; int * queues; } ;


 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int venus_free (struct venus_hfi_device*,int *) ;

__attribute__((used)) static void venus_interface_queues_release(struct venus_hfi_device *hdev)
{
 mutex_lock(&hdev->lock);

 venus_free(hdev, &hdev->ifaceq_table);
 venus_free(hdev, &hdev->sfr);

 memset(hdev->queues, 0, sizeof(hdev->queues));
 memset(&hdev->ifaceq_table, 0, sizeof(hdev->ifaceq_table));
 memset(&hdev->sfr, 0, sizeof(hdev->sfr));

 mutex_unlock(&hdev->lock);
}
