
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ubi_is_fm_vol (int) ;

__attribute__((used)) static bool vol_ignored(int vol_id)
{
 switch (vol_id) {
  case 128:
  return 1;
 }




 return 0;

}
