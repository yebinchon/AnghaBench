
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_DS_BASE ;
 int GRU_GSEG_PAGESIZE ;

__attribute__((used)) static inline int gru_get_tri(void *vaddr)
{
 return ((unsigned long)vaddr & (GRU_GSEG_PAGESIZE - 1)) - GRU_DS_BASE;
}
