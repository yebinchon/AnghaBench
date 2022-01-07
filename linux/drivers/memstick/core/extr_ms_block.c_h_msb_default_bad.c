
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_request {int dummy; } ;
struct memstick_dev {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int h_msb_default_bad(struct memstick_dev *card,
      struct memstick_request **mrq)
{
 return -ENXIO;
}
