
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_jpeg_buffer {scalar_t__ curr; scalar_t__ size; scalar_t__ data; } ;



__attribute__((used)) static int get_byte(struct s5p_jpeg_buffer *buf)
{
 if (buf->curr >= buf->size)
  return -1;

 return ((unsigned char *)buf->data)[buf->curr++];
}
