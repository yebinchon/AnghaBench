
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int member_1; int id; int value; int member_0; } ;
struct s5k6aa {int sd; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (struct v4l2_control const*) ;
 int EINVAL ;
 int REG_G_SPEC_EFFECTS ;






 int s5k6aa_write (struct i2c_client*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k6aa_set_colorfx(struct s5k6aa *s5k6aa, int val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&s5k6aa->sd);
 static const struct v4l2_control colorfx[] = {
  { 131, 0 },
  { 133, 1 },
  { 132, 2 },
  { 130, 3 },
  { 128, 4 },
  { 129, 5 },
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(colorfx); i++) {
  if (colorfx[i].id == val)
   return s5k6aa_write(client, REG_G_SPEC_EFFECTS,
         colorfx[i].value);
 }
 return -EINVAL;
}
