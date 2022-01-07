
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct serdev_device {struct device dev; } ;
struct rave_sp_deframer {int state; unsigned char* data; int length; } ;
struct rave_sp {struct rave_sp_deframer deframer; } ;
 struct rave_sp* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int rave_sp_receive_frame (struct rave_sp*,unsigned char*,int) ;

__attribute__((used)) static int rave_sp_receive_buf(struct serdev_device *serdev,
          const unsigned char *buf, size_t size)
{
 struct device *dev = &serdev->dev;
 struct rave_sp *sp = dev_get_drvdata(dev);
 struct rave_sp_deframer *deframer = &sp->deframer;
 const unsigned char *src = buf;
 const unsigned char *end = buf + size;

 while (src < end) {
  const unsigned char byte = *src++;

  switch (deframer->state) {
  case 129:
   if (byte == 128)
    deframer->state = 131;
   break;

  case 131:



   switch (byte) {
   case 132:
    rave_sp_receive_frame(sp,
            deframer->data,
            deframer->length);
    goto reset_framer;
   case 128:
    dev_warn(dev, "Bad frame: STX before ETX\n");
    goto reset_framer;
   case 133:
    deframer->state = 130;







    continue;
   }
  case 130:
   if (deframer->length == sizeof(deframer->data)) {
    dev_warn(dev, "Bad frame: Too long\n");
    goto reset_framer;
   }

   deframer->data[deframer->length++] = byte;





   deframer->state = 131;
   break;
  }
 }






 return size;

reset_framer:







 deframer->state = 129;
 deframer->length = 0;

 return src - buf;
}
