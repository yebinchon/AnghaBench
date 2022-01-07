
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef enum m5mols_restype { ____Placeholder_m5mols_restype } m5mols_restype ;
struct TYPE_2__ {scalar_t__ code; } ;


 int M5MOLS_RESTYPE_MONITOR ;
 scalar_t__ SIZE_DEFAULT_FFMT ;
 TYPE_1__* m5mols_default_ffmt ;

__attribute__((used)) static enum m5mols_restype __find_restype(u32 code)
{
 enum m5mols_restype type = M5MOLS_RESTYPE_MONITOR;

 do {
  if (code == m5mols_default_ffmt[type].code)
   return type;
 } while (type++ != SIZE_DEFAULT_FFMT);

 return 0;
}
