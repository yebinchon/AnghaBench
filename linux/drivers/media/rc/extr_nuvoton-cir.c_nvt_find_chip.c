
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvt_dev {int chip_ver; } ;
struct TYPE_3__ {int chip_ver; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SIO_ID_MASK ;
 TYPE_1__* nvt_chips ;

__attribute__((used)) static inline const char *nvt_find_chip(struct nvt_dev *nvt, int id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(nvt_chips); i++)
  if ((id & SIO_ID_MASK) == nvt_chips[i].chip_ver) {
   nvt->chip_ver = nvt_chips[i].chip_ver;
   return nvt_chips[i].name;
  }

 return ((void*)0);
}
