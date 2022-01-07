
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_stream {int dummy; } ;


 int read_byte (struct mtk_jpeg_stream*) ;

__attribute__((used)) static void read_skip(struct mtk_jpeg_stream *stream, long len)
{
 if (len <= 0)
  return;
 while (len--)
  read_byte(stream);
}
