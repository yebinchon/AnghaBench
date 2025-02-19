
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_tab {int (* show ) (struct seq_file*,void*,int) ;unsigned int rows; unsigned int width; int skip_first; } ;
struct file {int dummy; } ;


 struct seq_tab* __seq_open_private (struct file*,int *,int) ;
 int seq_tab_ops ;

struct seq_tab *seq_open_tab(struct file *f, unsigned int rows,
        unsigned int width, unsigned int have_header,
        int (*show)(struct seq_file *seq, void *v, int i))
{
 struct seq_tab *p;

 p = __seq_open_private(f, &seq_tab_ops, sizeof(*p) + rows * width);
 if (p) {
  p->show = show;
  p->rows = rows;
  p->width = width;
  p->skip_first = have_header != 0;
 }
 return p;
}
