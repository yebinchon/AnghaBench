
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_output {int pending_bufs; } ;
struct camss_buffer {int queue; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void vfe_buf_add_pending(struct vfe_output *output,
    struct camss_buffer *buffer)
{
 INIT_LIST_HEAD(&buffer->queue);
 list_add_tail(&buffer->queue, &output->pending_bufs);
}
