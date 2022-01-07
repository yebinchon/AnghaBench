
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mux_control {TYPE_2__* chip; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {int controllers; TYPE_1__ dev; } ;


 int ADG792A_DISABLE (unsigned int) ;
 int ADG792A_DISABLE_ALL ;
 int ADG792A_MUX (unsigned int,int) ;
 int ADG792A_MUX_ALL (int) ;
 int MUX_IDLE_DISCONNECT ;
 int adg792a_write_cmd (struct i2c_client*,int ,int ) ;
 unsigned int mux_control_get_index (struct mux_control*) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int adg792a_set(struct mux_control *mux, int state)
{
 struct i2c_client *i2c = to_i2c_client(mux->chip->dev.parent);
 u8 cmd;

 if (mux->chip->controllers == 1) {

  if (state == MUX_IDLE_DISCONNECT)
   cmd = ADG792A_DISABLE_ALL;
  else
   cmd = ADG792A_MUX_ALL(state);
 } else {
  unsigned int controller = mux_control_get_index(mux);

  if (state == MUX_IDLE_DISCONNECT)
   cmd = ADG792A_DISABLE(controller);
  else
   cmd = ADG792A_MUX(controller, state);
 }

 return adg792a_write_cmd(i2c, cmd, 0);
}
