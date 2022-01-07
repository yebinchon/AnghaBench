
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_component {int cdev; } ;


 int dev_name (int *) ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void enclosure_link_name(struct enclosure_component *cdev, char *name)
{
 strcpy(name, "enclosure_device:");
 strcat(name, dev_name(&cdev->cdev));
}
