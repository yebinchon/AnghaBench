
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_buffer {scalar_t__ curr; scalar_t__ end; } ;


 scalar_t__ min (unsigned long,unsigned long) ;

__attribute__((used)) static void skip(struct jpeg_buffer *buf, unsigned long len)
{
 buf->curr += min((unsigned long)(buf->end - buf->curr), len);
}
