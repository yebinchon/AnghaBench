
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bs {int ptr; int buf; } ;



__attribute__((used)) static int bs_len(struct bs *s)
{
 return s->ptr - s->buf;
}
