
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2_QENTRY_SZ ;

__attribute__((used)) static inline int desc_mem_sz(int nr_entry)
{
 return nr_entry << L2_QENTRY_SZ;
}
