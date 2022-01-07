
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_dma; int transfer_buffer; int transfer_buffer_length; } ;
struct gspca_dev {int dev; struct urb** urb; } ;


 int D_STREAM ;
 unsigned int MAX_NURBS ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void destroy_urbs(struct gspca_dev *gspca_dev)
{
 struct urb *urb;
 unsigned int i;

 gspca_dbg(gspca_dev, D_STREAM, "kill transfer\n");





 for (i = 0; i < MAX_NURBS; i++)
  usb_kill_urb(gspca_dev->urb[i]);

 gspca_dbg(gspca_dev, D_STREAM, "releasing urbs\n");
 for (i = 0; i < MAX_NURBS; i++) {
  urb = gspca_dev->urb[i];
  if (!urb)
   continue;
  gspca_dev->urb[i] = ((void*)0);
  usb_free_coherent(gspca_dev->dev,
      urb->transfer_buffer_length,
      urb->transfer_buffer,
      urb->transfer_dma);
  usb_free_urb(urb);
 }
}
