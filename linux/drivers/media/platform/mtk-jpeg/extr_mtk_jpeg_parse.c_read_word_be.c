
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_jpeg_stream {int dummy; } ;


 int read_byte (struct mtk_jpeg_stream*) ;

__attribute__((used)) static int read_word_be(struct mtk_jpeg_stream *stream, u32 *word)
{
 u32 temp;
 int byte;

 byte = read_byte(stream);
 if (byte == -1)
  return -1;
 temp = byte << 8;
 byte = read_byte(stream);
 if (byte == -1)
  return -1;
 *word = (u32)byte | temp;

 return 0;
}
