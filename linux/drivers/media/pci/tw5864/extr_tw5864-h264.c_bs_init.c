
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bs {int bits_left; void* ptr; void* buf_end; void* buf; } ;



__attribute__((used)) static void bs_init(struct bs *s, void *buf, int size)
{
 s->buf = buf;
 s->ptr = buf;
 s->buf_end = s->ptr + size;
 s->bits_left = 8;
}
