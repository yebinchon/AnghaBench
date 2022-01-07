
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {scalar_t__ page; int client; } ;


 int REG_CURPAGE_00H ;
 int i2c_smbus_write_byte_data (int ,int ,scalar_t__) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 int v4l_err (int ,char*,int ,scalar_t__) ;

__attribute__((used)) static int tda1997x_setpage(struct v4l2_subdev *sd, u8 page)
{
 struct tda1997x_state *state = to_state(sd);
 int ret;

 if (state->page != page) {
  ret = i2c_smbus_write_byte_data(state->client,
   REG_CURPAGE_00H, page);
  if (ret < 0) {
   v4l_err(state->client,
    "write reg error:reg=%2x,val=%2x\n",
    REG_CURPAGE_00H, page);
   return ret;
  }
  state->page = page;
 }
 return 0;
}
