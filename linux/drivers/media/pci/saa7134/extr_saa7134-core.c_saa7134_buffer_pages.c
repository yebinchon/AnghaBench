
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_ALIGN (int) ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static int saa7134_buffer_pages(int size)
{
 size = PAGE_ALIGN(size);
 size += PAGE_SIZE;
 size /= 4096;
 return size;
}
