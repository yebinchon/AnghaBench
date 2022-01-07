
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_buffer {int ref; } ;


 int kref_put (int *,int ) ;
 int uvc_queue_buffer_complete ;

void uvc_queue_buffer_release(struct uvc_buffer *buf)
{
 kref_put(&buf->ref, uvc_queue_buffer_complete);
}
