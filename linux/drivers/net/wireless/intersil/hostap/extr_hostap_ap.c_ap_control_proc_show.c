
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int file; } ;
struct mac_entry {char* addr; } ;
struct TYPE_2__ {int policy; char* entries; } ;
struct ap_data {TYPE_1__ mac_restrictions; } ;





 struct ap_data* PDE_DATA (int ) ;
 void* SEQ_START_TOKEN ;
 int file_inode (int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int ap_control_proc_show(struct seq_file *m, void *v)
{
 struct ap_data *ap = PDE_DATA(file_inode(m->file));
 char *policy_txt;
 struct mac_entry *entry;

 if (v == SEQ_START_TOKEN) {
  switch (ap->mac_restrictions.policy) {
  case 128:
   policy_txt = "open";
   break;
  case 130:
   policy_txt = "allow";
   break;
  case 129:
   policy_txt = "deny";
   break;
  default:
   policy_txt = "unknown";
   break;
  }
  seq_printf(m, "MAC policy: %s\n", policy_txt);
  seq_printf(m, "MAC entries: %u\n", ap->mac_restrictions.entries);
  seq_puts(m, "MAC list:\n");
  return 0;
 }

 entry = v;
 seq_printf(m, "%pM\n", entry->addr);
 return 0;
}
