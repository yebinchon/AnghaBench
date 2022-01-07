
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int roundup (unsigned int,int ) ;

__attribute__((used)) static int tw68_buffer_count(unsigned int size, unsigned int count)
{
 unsigned int maxcount;

 maxcount = (4 * 1024 * 1024) / roundup(size, PAGE_SIZE);
 if (count > maxcount)
  count = maxcount;
 return count;
}
