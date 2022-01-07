
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct bpf_prog_array_item {scalar_t__ prog; } ;
struct bpf_prog_array {struct bpf_prog_array_item* items; } ;
struct TYPE_2__ {int progs; } ;


 int bpf_prog_array_free (struct bpf_prog_array*) ;
 int bpf_prog_put (scalar_t__) ;
 struct bpf_prog_array* lirc_rcu_dereference (int ) ;

void lirc_bpf_free(struct rc_dev *rcdev)
{
 struct bpf_prog_array_item *item;
 struct bpf_prog_array *array;

 array = lirc_rcu_dereference(rcdev->raw->progs);
 if (!array)
  return;

 for (item = array->items; item->prog; item++)
  bpf_prog_put(item->prog);

 bpf_prog_array_free(array);
}
