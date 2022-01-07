
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int size; } ;


 unsigned long atomic64_read (int *) ;
 int vmballoon_deflate (struct vmballoon*,unsigned long,int) ;

__attribute__((used)) static void vmballoon_pop(struct vmballoon *b)
{
 unsigned long size;

 while ((size = atomic64_read(&b->size)))
  vmballoon_deflate(b, size, 0);
}
