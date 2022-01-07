
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int ARRAY_SIZE (int*) ;
 int* zigzag ;

__attribute__((used)) static void put_qtbl(u8 *p, const u8 *qtbl)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(zigzag); i++)
  p[i] = *(qtbl + zigzag[i]);
}
