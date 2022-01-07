
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int dummy; } ;


 unsigned long CAS_ROUND_PAGE (unsigned long) ;
 int CAS_TABORT (struct cas*) ;
 unsigned long TX_TARGET_ABORT_LEN ;

__attribute__((used)) static inline int cas_calc_tabort(struct cas *cp, const unsigned long addr,
      const int len)
{
 unsigned long off = addr + len;

 if (CAS_TABORT(cp) == 1)
  return 0;
 if ((CAS_ROUND_PAGE(off) - off) > TX_TARGET_ABORT_LEN)
  return 0;
 return TX_TARGET_ABORT_LEN;
}
