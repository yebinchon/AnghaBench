
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FWHT_FL_COMPONENTS_NUM_MSK ;
 unsigned int FWHT_FL_COMPONENTS_NUM_OFFSET ;
 unsigned int FWHT_FL_PIXENC_MSK ;
 unsigned int FWHT_VERSION ;

__attribute__((used)) static bool validate_by_version(unsigned int flags, unsigned int version)
{
 if (!version || version > FWHT_VERSION)
  return 0;

 if (version >= 2) {
  unsigned int components_num = 1 +
   ((flags & FWHT_FL_COMPONENTS_NUM_MSK) >>
    FWHT_FL_COMPONENTS_NUM_OFFSET);
  unsigned int pixenc = flags & FWHT_FL_PIXENC_MSK;

  if (components_num == 0 || components_num > 4 || !pixenc)
   return 0;
 }
 return 1;
}
