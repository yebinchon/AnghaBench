
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int private; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int t4_read_rss_key (int ,int *,int) ;

__attribute__((used)) static int rss_key_show(struct seq_file *seq, void *v)
{
 u32 key[10];

 t4_read_rss_key(seq->private, key, 1);
 seq_printf(seq, "%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x\n",
     key[9], key[8], key[7], key[6], key[5], key[4], key[3],
     key[2], key[1], key[0]);
 return 0;
}
