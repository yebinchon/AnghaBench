
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct init_table {scalar_t__ addr; int data; } ;
typedef int adapter_t ;


 scalar_t__ INITBLOCK_SLEEP ;
 int pr_err (char*,int ) ;
 int udelay (int ) ;
 int vsc_write (int *,scalar_t__,int ) ;

__attribute__((used)) static void run_table(adapter_t *adapter, struct init_table *ib, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  if (ib[i].addr == INITBLOCK_SLEEP) {
   udelay( ib[i].data );
   pr_err("sleep %d us\n",ib[i].data);
  } else
   vsc_write( adapter, ib[i].addr, ib[i].data );
 }
}
