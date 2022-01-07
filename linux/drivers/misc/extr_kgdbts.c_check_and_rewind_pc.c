
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BREAK_INSTR_SIZE ;
 int NUMREGBYTES ;
 scalar_t__ arch_needs_sstep_emulation ;
 unsigned long cont_addr ;
 int eprintk (char*,unsigned long,unsigned long) ;
 int gdb_regs_to_pt_regs (scalar_t__,int *) ;
 unsigned long instruction_pointer (int *) ;
 int instruction_pointer_set (int *,unsigned long) ;
 int kgdb_hex2mem (char*,char*,int ) ;
 scalar_t__ kgdbts_gdb_regs ;
 int kgdbts_regs ;
 unsigned long lookup_addr (char*) ;
 int restart_from_top_after_write ;
 unsigned long sstep_addr ;
 scalar_t__ strcmp (char*,char*) ;
 int v2printk (char*,...) ;

__attribute__((used)) static int check_and_rewind_pc(char *put_str, char *arg)
{
 unsigned long addr = lookup_addr(arg);
 unsigned long ip;
 int offset = 0;

 kgdb_hex2mem(&put_str[1], (char *)kgdbts_gdb_regs,
   NUMREGBYTES);
 gdb_regs_to_pt_regs(kgdbts_gdb_regs, &kgdbts_regs);
 ip = instruction_pointer(&kgdbts_regs);
 v2printk("Stopped at IP: %lx\n", ip);






 if (arch_needs_sstep_emulation && sstep_addr &&
     ip + offset == sstep_addr &&
     ((!strcmp(arg, "sys_open") || !strcmp(arg, "do_fork")))) {

  v2printk("Emul: rewind hit single step bp\n");
  restart_from_top_after_write = 1;
 } else if (strcmp(arg, "silent") && ip + offset != addr) {
  eprintk("kgdbts: BP mismatch %lx expected %lx\n",
      ip + offset, addr);
  return 1;
 }

 ip += offset;
 cont_addr = ip;



 return 0;
}
