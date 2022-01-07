
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREAK_INSTR_SIZE ;
 int fill_get_buf (int ) ;
 unsigned long lookup_addr (char*) ;
 int scratch_buf ;
 int sprintf (int ,char*,char*,unsigned long,int ) ;

__attribute__((used)) static void break_helper(char *bp_type, char *arg, unsigned long vaddr)
{
 unsigned long addr;

 if (arg)
  addr = lookup_addr(arg);
 else
  addr = vaddr;

 sprintf(scratch_buf, "%s,%lx,%i", bp_type, addr,
  BREAK_INSTR_SIZE);
 fill_get_buf(scratch_buf);
}
