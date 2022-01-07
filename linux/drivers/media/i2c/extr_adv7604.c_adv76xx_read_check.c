
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; } ;
struct adv76xx_state {int * regmap; struct i2c_client** i2c_clients; } ;


 int regmap_read (int ,int ,unsigned int*) ;
 int v4l_err (struct i2c_client*,char*,int ,int ) ;

__attribute__((used)) static int adv76xx_read_check(struct adv76xx_state *state,
        int client_page, u8 reg)
{
 struct i2c_client *client = state->i2c_clients[client_page];
 int err;
 unsigned int val;

 err = regmap_read(state->regmap[client_page], reg, &val);

 if (err) {
  v4l_err(client, "error reading %02x, %02x\n",
    client->addr, reg);
  return err;
 }
 return val;
}
