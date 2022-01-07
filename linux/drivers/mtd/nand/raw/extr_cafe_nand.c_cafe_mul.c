
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gf4096_mul (int,int) ;

__attribute__((used)) static int cafe_mul(int x)
{
 if (x == 0)
  return 1;
 return gf4096_mul(x, 0xe01);
}
