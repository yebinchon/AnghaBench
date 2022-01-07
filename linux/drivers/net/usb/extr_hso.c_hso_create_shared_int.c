
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct hso_shared_int {int shared_intr_urb; struct hso_shared_int* shared_intr_buf; int shared_int_lock; TYPE_1__* intr_endp; } ;
struct TYPE_2__ {int wMaxPacketSize; } ;


 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_XFER_INT ;
 int dev_err (int *,char*) ;
 TYPE_1__* hso_get_ep (struct usb_interface*,int ,int ) ;
 int kfree (struct hso_shared_int*) ;
 void* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_init (int *) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static
struct hso_shared_int *hso_create_shared_int(struct usb_interface *interface)
{
 struct hso_shared_int *mux = kzalloc(sizeof(*mux), GFP_KERNEL);

 if (!mux)
  return ((void*)0);

 mux->intr_endp = hso_get_ep(interface, USB_ENDPOINT_XFER_INT,
        USB_DIR_IN);
 if (!mux->intr_endp) {
  dev_err(&interface->dev, "Can't find INT IN endpoint\n");
  goto exit;
 }

 mux->shared_intr_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!mux->shared_intr_urb)
  goto exit;
 mux->shared_intr_buf =
  kzalloc(le16_to_cpu(mux->intr_endp->wMaxPacketSize),
   GFP_KERNEL);
 if (!mux->shared_intr_buf)
  goto exit;

 mutex_init(&mux->shared_int_lock);

 return mux;

exit:
 kfree(mux->shared_intr_buf);
 usb_free_urb(mux->shared_intr_urb);
 kfree(mux);
 return ((void*)0);
}
