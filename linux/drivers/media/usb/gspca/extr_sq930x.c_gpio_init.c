
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int gpio_set (struct sd*,int const,int) ;

__attribute__((used)) static void gpio_init(struct sd *sd,
   const u8 *gpio)
{
 gpio_set(sd, *gpio++, 0x000f);
 gpio_set(sd, *gpio++, 0x000f);
 gpio_set(sd, *gpio++, 0x000f);
 gpio_set(sd, *gpio++, 0x000f);
 gpio_set(sd, *gpio, 0x000f);
}
