
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gspca_dev {TYPE_1__** urb; int dev; } ;
struct TYPE_2__ {int* transfer_buffer; int pipe; } ;


 int ARRAY_SIZE (int**) ;
 int JEILINJ_DATA_TIMEOUT ;
 int JEILINJ_MAX_TRANSFER ;
 int jlj_write2 (struct gspca_dev*,int*) ;
 int usb_bulk_msg (int ,int ,int*,int,int *,int ) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 int i;
 u8 *buf;
 static u8 stop_commands[][2] = {
  {0x71, 0x00},
  {0x70, 0x09},
  {0x71, 0x80},
  {0x70, 0x05}
 };

 for (;;) {

  usb_bulk_msg(gspca_dev->dev,
    gspca_dev->urb[0]->pipe,
    gspca_dev->urb[0]->transfer_buffer,
    JEILINJ_MAX_TRANSFER, ((void*)0),
    JEILINJ_DATA_TIMEOUT);


  i = 0;
  buf = gspca_dev->urb[0]->transfer_buffer;
  while ((i < (JEILINJ_MAX_TRANSFER - 1)) &&
   ((buf[i] != 0xff) || (buf[i+1] != 0xd9)))
   i++;

  if (i != (JEILINJ_MAX_TRANSFER - 1))

   break;
  }

 for (i = 0; i < ARRAY_SIZE(stop_commands); i++)
  jlj_write2(gspca_dev, stop_commands[i]);
}
