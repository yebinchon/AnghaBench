
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool slic_is_fiber(unsigned short subdev)
{
 switch (subdev) {

 case 133:
 case 128:

 case 131:
 case 132:
 case 129:
 case 130:
  return 1;
 }
 return 0;
}
