
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jpeg_buffer {scalar_t__ curr; scalar_t__ end; } ;



__attribute__((used)) static int get_byte(struct jpeg_buffer *buf)
{
 if (buf->curr >= buf->end)
  return -1;

 return *(u8 *)buf->curr++;
}
