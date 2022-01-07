
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool ubi_is_fm_vol(int vol_id)
{
 switch (vol_id) {
  case 128:
  case 129:
  return 1;
 }

 return 0;
}
