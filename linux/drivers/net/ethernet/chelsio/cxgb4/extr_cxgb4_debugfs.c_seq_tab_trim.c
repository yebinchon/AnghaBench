
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_tab {unsigned int rows; } ;


 int EINVAL ;

__attribute__((used)) static int seq_tab_trim(struct seq_tab *p, unsigned int new_rows)
{
 if (new_rows > p->rows)
  return -EINVAL;
 p->rows = new_rows;
 return 0;
}
