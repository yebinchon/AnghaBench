
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int pm_num_pages(unsigned int mem_size,
     unsigned int pg_size)
{
 unsigned int n = mem_size / pg_size;

 return n - n % 24;
}
