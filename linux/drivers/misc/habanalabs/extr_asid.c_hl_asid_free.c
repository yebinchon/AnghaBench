
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long max_asid; } ;
struct hl_device {int asid_bitmap; TYPE_1__ asic_prop; } ;


 scalar_t__ WARN (int,char*,unsigned long) ;
 int clear_bit (unsigned long,int ) ;

void hl_asid_free(struct hl_device *hdev, unsigned long asid)
{
 if (WARN((asid == 0 || asid >= hdev->asic_prop.max_asid),
      "Invalid ASID %lu", asid))
  return;
 clear_bit(asid, hdev->asid_bitmap);
}
