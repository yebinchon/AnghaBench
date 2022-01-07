
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct vivid_dev {size_t input; int * std_cap; } ;


 scalar_t__ vivid_is_sdtv_cap (struct vivid_dev const*) ;

__attribute__((used)) static inline v4l2_std_id vivid_get_std_cap(const struct vivid_dev *dev)
{
 if (vivid_is_sdtv_cap(dev))
  return dev->std_cap[dev->input];
 return 0;
}
