
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int swap (int ,int ) ;

__attribute__((used)) static void swap_bytes(u8 *b, int length)
{
 length -= length % 2;
 for (; length; b += 2, length -= 2)
  swap(*b, *(b + 1));
}
