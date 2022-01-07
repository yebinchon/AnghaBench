
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_entry {scalar_t__ pending; scalar_t__ locked; } ;


 int EBUSY ;
 int EPERM ;

int writable_filter(struct filter_entry *f)
{
 if (f->locked)
  return -EPERM;
 if (f->pending)
  return -EBUSY;

 return 0;
}
