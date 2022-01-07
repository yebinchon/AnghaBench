
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;


 int mxl111sf_ctrl_msg (struct mxl111sf_state*,int ,int *,int,int *,int ) ;
 int mxl_fail (int) ;

__attribute__((used)) static int mxl111sf_i2c_send_data(struct mxl111sf_state *state,
      u8 index, u8 *wdata)
{
 int ret = mxl111sf_ctrl_msg(state, wdata[0],
        &wdata[1], 25, ((void*)0), 0);
 mxl_fail(ret);

 return ret;
}
