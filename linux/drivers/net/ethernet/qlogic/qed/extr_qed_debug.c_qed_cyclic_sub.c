
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 qed_cyclic_sub(u32 a, u32 b, u32 size)
{
 return (size + a - b) % size;
}
