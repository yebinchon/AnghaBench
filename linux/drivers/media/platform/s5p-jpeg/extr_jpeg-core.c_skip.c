
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_jpeg_buffer {int dummy; } ;


 int get_byte (struct s5p_jpeg_buffer*) ;

__attribute__((used)) static void skip(struct s5p_jpeg_buffer *buf, long len)
{
 if (len <= 0)
  return;

 while (len--)
  get_byte(buf);
}
