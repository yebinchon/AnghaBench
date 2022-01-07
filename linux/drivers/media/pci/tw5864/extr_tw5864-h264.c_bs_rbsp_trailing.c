
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bs {int bits_left; } ;


 int bs_write (struct bs*,int,int) ;
 int bs_write1 (struct bs*,int) ;

__attribute__((used)) static void bs_rbsp_trailing(struct bs *s)
{
 bs_write1(s, 1);
 if (s->bits_left != 8)
  bs_write(s, s->bits_left, 0x00);
}
