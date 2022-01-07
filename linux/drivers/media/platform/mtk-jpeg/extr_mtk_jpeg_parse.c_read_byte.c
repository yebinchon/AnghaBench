
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_stream {scalar_t__ curr; scalar_t__ size; int* addr; } ;



__attribute__((used)) static int read_byte(struct mtk_jpeg_stream *stream)
{
 if (stream->curr >= stream->size)
  return -1;
 return stream->addr[stream->curr++];
}
