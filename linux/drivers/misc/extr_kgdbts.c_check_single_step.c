
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;


 int NUMREGBYTES ;
 scalar_t__ arch_needs_sstep_emulation ;
 int cont_instead_of_sstep ;
 unsigned long cont_thread_id ;
 int eprintk (char*,unsigned long) ;
 int gdb_regs_to_pt_regs (scalar_t__,int *) ;
 unsigned long instruction_pointer (int *) ;
 int kgdb_hex2mem (char*,char*,int ) ;
 scalar_t__ kgdbts_gdb_regs ;
 int kgdbts_regs ;
 unsigned long lookup_addr (char*) ;
 scalar_t__ sstep_state ;
 unsigned long sstep_thread_id ;
 TYPE_1__ ts ;
 int v2printk (char*,unsigned long) ;

__attribute__((used)) static int check_single_step(char *put_str, char *arg)
{
 unsigned long addr = lookup_addr(arg);
 static int matched_id;





 kgdb_hex2mem(&put_str[1], (char *)kgdbts_gdb_regs,
   NUMREGBYTES);
 gdb_regs_to_pt_regs(kgdbts_gdb_regs, &kgdbts_regs);
 v2printk("Singlestep stopped at IP: %lx\n",
     instruction_pointer(&kgdbts_regs));

 if (sstep_thread_id != cont_thread_id) {





  v2printk("ThrID does not match: %lx\n", cont_thread_id);
  if (arch_needs_sstep_emulation) {
   if (matched_id &&
       instruction_pointer(&kgdbts_regs) != addr)
    goto continue_test;
   matched_id++;
   ts.idx -= 2;
   sstep_state = 0;
   return 0;
  }
  cont_instead_of_sstep = 1;
  ts.idx -= 4;
  return 0;
 }
continue_test:
 matched_id = 0;
 if (instruction_pointer(&kgdbts_regs) == addr) {
  eprintk("kgdbts: SingleStep failed at %lx\n",
      instruction_pointer(&kgdbts_regs));
  return 1;
 }

 return 0;
}
