
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int gpio_bits (int,unsigned int) ;
 int gpio_inout (int,int) ;

__attribute__((used)) static void sigmaSQ_muxsel(struct bttv *btv, unsigned int input)
{
 unsigned int inmux = input % 8;
 gpio_inout( 0xf, 0xf );
 gpio_bits( 0xf, inmux );
}
