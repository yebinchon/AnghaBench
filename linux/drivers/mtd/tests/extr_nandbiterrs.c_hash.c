
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;



__attribute__((used)) static uint8_t hash(unsigned offset)
{
 unsigned v = offset;
 unsigned char c;
 v ^= 0x7f7edfd3;
 v = v ^ (v >> 3);
 v = v ^ (v >> 5);
 v = v ^ (v >> 13);
 c = v & 0xFF;

 c = (c & 0x0F) << 4 | (c & 0xF0) >> 4;
 c = (c & 0x33) << 2 | (c & 0xCC) >> 2;
 c = (c & 0x55) << 1 | (c & 0xAA) >> 1;
 return c;
}
