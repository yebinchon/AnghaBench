
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int components; struct enclosure_component* component; } ;
struct enclosure_component {int number; int cdev; } ;


 char* dev_name (int *) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static struct enclosure_component *
enclosure_component_find_by_name(struct enclosure_device *edev,
    const char *name)
{
 int i;
 const char *cname;
 struct enclosure_component *ecomp;

 if (!edev || !name || !name[0])
  return ((void*)0);

 for (i = 0; i < edev->components; i++) {
  ecomp = &edev->component[i];
  cname = dev_name(&ecomp->cdev);
  if (ecomp->number != -1 &&
      cname && cname[0] &&
      !strcmp(cname, name))
   return ecomp;
 }

 return ((void*)0);
}
