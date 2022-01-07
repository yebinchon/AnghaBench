
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {void* events_stat_aggregate; void* events_stat; } ;



void *goya_get_events_stat(struct hl_device *hdev, bool aggregate, u32 *size)
{
 struct goya_device *goya = hdev->asic_specific;

 if (aggregate) {
  *size = (u32) sizeof(goya->events_stat_aggregate);
  return goya->events_stat_aggregate;
 }

 *size = (u32) sizeof(goya->events_stat);
 return goya->events_stat;
}
