
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int cx25840_and_or (struct i2c_client*,int,int,int) ;

__attribute__((used)) static void set_balance(struct i2c_client *client, int balance)
{
 int bal = balance >> 8;
 if (bal > 0x80) {

  cx25840_and_or(client, 0x8d5, 0x7f, 0x80);

  cx25840_and_or(client, 0x8d5, ~0x7f, bal & 0x7f);
 } else {

  cx25840_and_or(client, 0x8d5, 0x7f, 0x00);

  cx25840_and_or(client, 0x8d5, ~0x7f, 0x80 - bal);
 }
}
