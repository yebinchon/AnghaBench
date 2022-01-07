
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fman {TYPE_1__* intr_mng; } ;
typedef enum fman_intr_type { ____Placeholder_fman_intr_type } fman_intr_type ;
typedef enum fman_event_modules { ____Placeholder_fman_event_modules } fman_event_modules ;
struct TYPE_2__ {void (* isr_cb ) (void*) ;void* src_handle; } ;


 int FMAN_EV_CNT ;
 int WARN_ON (int) ;
 int get_module_event (int,int ,int) ;

void fman_register_intr(struct fman *fman, enum fman_event_modules module,
   u8 mod_id, enum fman_intr_type intr_type,
   void (*isr_cb)(void *src_arg), void *src_arg)
{
 int event = 0;

 event = get_module_event(module, mod_id, intr_type);
 WARN_ON(event >= FMAN_EV_CNT);


 fman->intr_mng[event].isr_cb = isr_cb;
 fman->intr_mng[event].src_handle = src_arg;
}
