
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_hw_dev_id {scalar_t__ device; scalar_t__ vendor; } ;
struct TYPE_2__ {scalar_t__ device; scalar_t__ vendor; } ;
struct scif_hw_dev {TYPE_1__ id; } ;


 scalar_t__ SCIF_DEV_ANY_ID ;

__attribute__((used)) static inline int scif_id_match(const struct scif_hw_dev *dev,
    const struct scif_hw_dev_id *id)
{
 if (id->device != dev->id.device && id->device != SCIF_DEV_ANY_ID)
  return 0;

 return id->vendor == SCIF_DEV_ANY_ID || id->vendor == dev->id.vendor;
}
