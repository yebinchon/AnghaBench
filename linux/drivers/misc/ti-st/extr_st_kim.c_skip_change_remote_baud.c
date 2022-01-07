
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bts_action {long size; scalar_t__ type; } ;


 scalar_t__ ACTION_WAIT_EVENT ;
 int pr_err (char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static void skip_change_remote_baud(unsigned char **ptr, long *len)
{
 unsigned char *nxt_action, *cur_action;
 cur_action = *ptr;

 nxt_action = cur_action + sizeof(struct bts_action) +
  ((struct bts_action *) cur_action)->size;

 if (((struct bts_action *) nxt_action)->type != ACTION_WAIT_EVENT) {
  pr_err("invalid action after change remote baud command");
 } else {
  *ptr = *ptr + sizeof(struct bts_action) +
   ((struct bts_action *)cur_action)->size;
  *len = *len - (sizeof(struct bts_action) +
    ((struct bts_action *)cur_action)->size);

  pr_warn("skipping the wait event of change remote baud");
 }
}
