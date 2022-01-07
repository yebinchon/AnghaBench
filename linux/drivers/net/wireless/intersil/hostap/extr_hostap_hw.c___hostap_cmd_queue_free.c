
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hostap_cmd_queue {int del_req; int usecnt; int list; } ;
struct TYPE_3__ {int cmd_queue_len; } ;
typedef TYPE_1__ local_info_t ;


 int kfree (struct hostap_cmd_queue*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void __hostap_cmd_queue_free(local_info_t *local,
        struct hostap_cmd_queue *entry,
        int del_req)
{
 if (del_req) {
  entry->del_req = 1;
  if (!list_empty(&entry->list)) {
   list_del_init(&entry->list);
   local->cmd_queue_len--;
  }
 }

 if (refcount_dec_and_test(&entry->usecnt) && entry->del_req)
  kfree(entry);
}
