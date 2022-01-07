
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_action_entry {int id; } ;



void put_ids_to_array(int *ids,
        const struct flow_action_entry *entries,
        unsigned int num)
{
 unsigned int i;

 for (i = 0; i < num; i++)
  ids[i] = entries[i].id;
}
