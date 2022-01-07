
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int curr_dbg_uidn_show (struct seq_file*,void*,int ) ;

__attribute__((used)) static int curr_dbg_uid0_show(struct seq_file *s, void *unused)
{
 return curr_dbg_uidn_show(s, unused, 0);
}
