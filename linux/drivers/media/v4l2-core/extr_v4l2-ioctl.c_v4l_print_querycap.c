
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int device_caps; int capabilities; int version; int bus_info; int card; int driver; } ;


 int pr_cont (char*,int,int ,int,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_querycap(const void *arg, bool write_only)
{
 const struct v4l2_capability *p = arg;

 pr_cont("driver=%.*s, card=%.*s, bus=%.*s, version=0x%08x, capabilities=0x%08x, device_caps=0x%08x\n",
  (int)sizeof(p->driver), p->driver,
  (int)sizeof(p->card), p->card,
  (int)sizeof(p->bus_info), p->bus_info,
  p->version, p->capabilities, p->device_caps);
}
