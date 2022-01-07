
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long max_asid; } ;
struct hl_device {int asid_mutex; int asid_bitmap; TYPE_1__ asic_prop; } ;


 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (unsigned long,int ) ;

unsigned long hl_asid_alloc(struct hl_device *hdev)
{
 unsigned long found;

 mutex_lock(&hdev->asid_mutex);

 found = find_first_zero_bit(hdev->asid_bitmap,
     hdev->asic_prop.max_asid);
 if (found == hdev->asic_prop.max_asid)
  found = 0;
 else
  set_bit(found, hdev->asid_bitmap);

 mutex_unlock(&hdev->asid_mutex);

 return found;
}
