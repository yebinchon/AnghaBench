
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 int BUG_ON (int) ;
 unsigned int* flit_desc_map ;

__attribute__((used)) static inline unsigned int flits_to_desc(unsigned int n)
{
 BUG_ON(n >= ARRAY_SIZE(flit_desc_map));
 return flit_desc_map[n];
}
