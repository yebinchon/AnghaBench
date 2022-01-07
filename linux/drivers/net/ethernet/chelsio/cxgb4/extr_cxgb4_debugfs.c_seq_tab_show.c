
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_tab {int (* show ) (struct seq_file*,void*,int) ;char* data; int width; } ;
struct seq_file {struct seq_tab* private; } ;


 int stub1 (struct seq_file*,void*,int) ;

__attribute__((used)) static int seq_tab_show(struct seq_file *seq, void *v)
{
 const struct seq_tab *tb = seq->private;

 return tb->show(seq, v, ((char *)v - tb->data) / tb->width);
}
