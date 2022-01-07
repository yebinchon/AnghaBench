
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb_dec {int urb_tasklet; int urb_frame_list; int urb_frame_list_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int ttusb_dec_process_urb_frame_list ;

__attribute__((used)) static void ttusb_dec_init_tasklet(struct ttusb_dec *dec)
{
 spin_lock_init(&dec->urb_frame_list_lock);
 INIT_LIST_HEAD(&dec->urb_frame_list);
 tasklet_init(&dec->urb_tasklet, ttusb_dec_process_urb_frame_list,
       (unsigned long)dec);
}
