
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7164_user_buffer {struct saa7164_user_buffer* data; } ;


 int kfree (struct saa7164_user_buffer*) ;

void saa7164_buffer_dealloc_user(struct saa7164_user_buffer *buf)
{
 if (!buf)
  return;

 kfree(buf->data);
 buf->data = ((void*)0);

 kfree(buf);
}
