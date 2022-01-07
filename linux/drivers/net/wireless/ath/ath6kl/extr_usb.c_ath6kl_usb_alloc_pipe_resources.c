
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_usb_pipe {int urb_alloc; int usb_pipe_handle; int logical_pipe_num; int urb_submitted; int urb_list_head; } ;
struct ath6kl_urb_context {struct ath6kl_usb_pipe* pipe; } ;


 int ATH6KL_DBG_USB ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ath6kl_dbg (int ,char*,int ,int ,int ) ;
 int ath6kl_usb_free_urb_to_pipe (struct ath6kl_usb_pipe*,struct ath6kl_urb_context*) ;
 int init_usb_anchor (int *) ;
 struct ath6kl_urb_context* kzalloc (int,int ) ;

__attribute__((used)) static int ath6kl_usb_alloc_pipe_resources(struct ath6kl_usb_pipe *pipe,
        int urb_cnt)
{
 struct ath6kl_urb_context *urb_context;
 int status = 0, i;

 INIT_LIST_HEAD(&pipe->urb_list_head);
 init_usb_anchor(&pipe->urb_submitted);

 for (i = 0; i < urb_cnt; i++) {
  urb_context = kzalloc(sizeof(struct ath6kl_urb_context),
          GFP_KERNEL);
  if (urb_context == ((void*)0)) {
   status = -ENOMEM;
   goto fail_alloc_pipe_resources;
  }

  urb_context->pipe = pipe;





  pipe->urb_alloc++;
  ath6kl_usb_free_urb_to_pipe(pipe, urb_context);
 }

 ath6kl_dbg(ATH6KL_DBG_USB,
     "ath6kl usb: alloc resources lpipe:%d hpipe:0x%X urbs:%d\n",
     pipe->logical_pipe_num, pipe->usb_pipe_handle,
     pipe->urb_alloc);

fail_alloc_pipe_resources:
 return status;
}
