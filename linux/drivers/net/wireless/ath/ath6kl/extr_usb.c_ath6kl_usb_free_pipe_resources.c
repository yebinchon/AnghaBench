
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_usb_pipe {scalar_t__ urb_alloc; scalar_t__ urb_cnt; int usb_pipe_handle; int logical_pipe_num; int * ar_usb; } ;
struct ath6kl_urb_context {int dummy; } ;


 int ATH6KL_DBG_USB ;
 int ath6kl_dbg (int ,char*,int ,int ,scalar_t__,scalar_t__) ;
 struct ath6kl_urb_context* ath6kl_usb_alloc_urb_from_pipe (struct ath6kl_usb_pipe*) ;
 int kfree (struct ath6kl_urb_context*) ;

__attribute__((used)) static void ath6kl_usb_free_pipe_resources(struct ath6kl_usb_pipe *pipe)
{
 struct ath6kl_urb_context *urb_context;

 if (pipe->ar_usb == ((void*)0)) {

  return;
 }

 ath6kl_dbg(ATH6KL_DBG_USB,
     "ath6kl usb: free resources lpipe:%d"
     "hpipe:0x%X urbs:%d avail:%d\n",
     pipe->logical_pipe_num, pipe->usb_pipe_handle,
     pipe->urb_alloc, pipe->urb_cnt);

 if (pipe->urb_alloc != pipe->urb_cnt) {
  ath6kl_dbg(ATH6KL_DBG_USB,
      "ath6kl usb: urb leak! lpipe:%d"
      "hpipe:0x%X urbs:%d avail:%d\n",
      pipe->logical_pipe_num, pipe->usb_pipe_handle,
      pipe->urb_alloc, pipe->urb_cnt);
 }

 while (1) {
  urb_context = ath6kl_usb_alloc_urb_from_pipe(pipe);
  if (urb_context == ((void*)0))
   break;
  kfree(urb_context);
 }
}
