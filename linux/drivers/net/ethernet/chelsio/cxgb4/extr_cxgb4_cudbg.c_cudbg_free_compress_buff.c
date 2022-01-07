
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_init {scalar_t__ compress_buff; } ;


 int vfree (scalar_t__) ;

__attribute__((used)) static void cudbg_free_compress_buff(struct cudbg_init *pdbg_init)
{
 if (pdbg_init->compress_buff)
  vfree(pdbg_init->compress_buff);
}
