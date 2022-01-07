
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int base; } ;


 int DRIVER_NAME ;
 int EINVAL ;
 int EIO ;
 int request_region (int,int,int ) ;

__attribute__((used)) static int wbsd_request_region(struct wbsd_host *host, int base)
{
 if (base & 0x7)
  return -EINVAL;

 if (!request_region(base, 8, DRIVER_NAME))
  return -EIO;

 host->base = base;

 return 0;
}
