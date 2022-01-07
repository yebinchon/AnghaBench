
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_fifo_head_uv {int n_entries; } ;



__attribute__((used)) static int
xpc_n_of_fifo_entries_uv(struct xpc_fifo_head_uv *head)
{
 return head->n_entries;
}
