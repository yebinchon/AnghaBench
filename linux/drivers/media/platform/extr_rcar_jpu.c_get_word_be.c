
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_buffer {int end; int curr; } ;


 unsigned int get_unaligned_be16 (int) ;

__attribute__((used)) static int get_word_be(struct jpeg_buffer *buf, unsigned int *word)
{
 if (buf->end - buf->curr < 2)
  return -1;

 *word = get_unaligned_be16(buf->curr);
 buf->curr += 2;

 return 0;
}
