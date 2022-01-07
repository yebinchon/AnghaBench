
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_data {int id; int* data; int field; } ;


 int EINVAL ;
 int EIO ;


 int saa711x_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static int saa711x_g_vbi_data(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_data *data)
{



 switch (data->id) {
 case 128:
  if (saa711x_read(sd, 0x6b) & 0xc0)
   return -EIO;
  data->data[0] = saa711x_read(sd, 0x6c);
  data->data[1] = saa711x_read(sd, 0x6d);
  return 0;
 case 129:
  if (data->field == 0) {

   if (saa711x_read(sd, 0x66) & 0x30)
    return -EIO;
   data->data[0] = saa711x_read(sd, 0x69);
   data->data[1] = saa711x_read(sd, 0x6a);
   return 0;
  }

  if (saa711x_read(sd, 0x66) & 0xc0)
   return -EIO;
  data->data[0] = saa711x_read(sd, 0x67);
  data->data[1] = saa711x_read(sd, 0x68);
  return 0;
 default:
  return -EINVAL;
 }
}
