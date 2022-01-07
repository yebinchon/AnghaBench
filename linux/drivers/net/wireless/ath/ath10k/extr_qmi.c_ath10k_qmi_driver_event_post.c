
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_qmi_driver_event {int type; int list; void* data; } ;
struct ath10k_qmi {int event_work; int event_wq; int event_lock; int event_list; } ;
typedef enum ath10k_qmi_driver_event_type { ____Placeholder_ath10k_qmi_driver_event_type } ath10k_qmi_driver_event_type ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct ath10k_qmi_driver_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
ath10k_qmi_driver_event_post(struct ath10k_qmi *qmi,
        enum ath10k_qmi_driver_event_type type,
        void *data)
{
 struct ath10k_qmi_driver_event *event;

 event = kzalloc(sizeof(*event), GFP_ATOMIC);
 if (!event)
  return -ENOMEM;

 event->type = type;
 event->data = data;

 spin_lock(&qmi->event_lock);
 list_add_tail(&event->list, &qmi->event_list);
 spin_unlock(&qmi->event_lock);

 queue_work(qmi->event_wq, &qmi->event_work);

 return 0;
}
