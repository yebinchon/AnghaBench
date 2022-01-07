
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct gspca_dev {int streaming; } ;


 int D_PACK ;
 int fill_frame (struct gspca_dev*,struct urb*) ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;

__attribute__((used)) static void isoc_irq(struct urb *urb)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *) urb->context;

 gspca_dbg(gspca_dev, D_PACK, "isoc irq\n");
 if (!gspca_dev->streaming)
  return;
 fill_frame(gspca_dev, urb);
}
