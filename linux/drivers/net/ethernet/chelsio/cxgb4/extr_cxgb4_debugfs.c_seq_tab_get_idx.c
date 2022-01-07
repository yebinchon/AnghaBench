
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_tab {size_t rows; void* data; size_t width; scalar_t__ skip_first; } ;
typedef size_t loff_t ;



__attribute__((used)) static void *seq_tab_get_idx(struct seq_tab *tb, loff_t pos)
{
 pos -= tb->skip_first;
 return pos >= tb->rows ? ((void*)0) : &tb->data[pos * tb->width];
}
