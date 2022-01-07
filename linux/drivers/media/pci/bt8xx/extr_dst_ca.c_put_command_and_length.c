
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void put_command_and_length(u8 *data, int command, int length)
{
 data[0] = (command >> 16) & 0xff;
 data[1] = (command >> 8) & 0xff;
 data[2] = command & 0xff;
 data[3] = length;
}
