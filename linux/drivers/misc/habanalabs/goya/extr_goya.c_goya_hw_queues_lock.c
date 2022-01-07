
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_queues_lock; } ;


 int spin_lock (int *) ;

__attribute__((used)) static void goya_hw_queues_lock(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;

 spin_lock(&goya->hw_queues_lock);
}
