
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * usb_buf; } ;
struct sd {TYPE_2__* sensor; TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dev; } ;
typedef int buffer ;
typedef int __u8 ;
struct TYPE_4__ {int (* start ) (struct sd*) ;} ;


 int D_STREAM ;
 int M5602_URB_MSG_TIMEOUT ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int memcpy (int *,int const*,int) ;
 int stub1 (struct sd*) ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int m5602_start_transfer(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 *buf = sd->gspca_dev.usb_buf;
 int err;


 const u8 buffer[4] = {0x13, 0xf9, 0x0f, 0x01};

 if (sd->sensor->start)
  sd->sensor->start(sd);

 memcpy(buf, buffer, sizeof(buffer));
 err = usb_control_msg(gspca_dev->dev,
         usb_sndctrlpipe(gspca_dev->dev, 0),
         0x04, 0x40, 0x19, 0x0000, buf,
         sizeof(buffer), M5602_URB_MSG_TIMEOUT);

 gspca_dbg(gspca_dev, D_STREAM, "Transfer started\n");
 return (err < 0) ? err : 0;
}
