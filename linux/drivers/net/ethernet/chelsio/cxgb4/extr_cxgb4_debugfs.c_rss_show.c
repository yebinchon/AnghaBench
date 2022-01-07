
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int rss_show(struct seq_file *seq, void *v, int idx)
{
 u16 *entry = v;

 seq_printf(seq, "%4d:  %4u  %4u  %4u  %4u  %4u  %4u  %4u  %4u\n",
     idx * 8, entry[0], entry[1], entry[2], entry[3], entry[4],
     entry[5], entry[6], entry[7]);
 return 0;
}
