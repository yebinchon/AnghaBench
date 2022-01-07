
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack {int buf; } ;


 int vfree (int ) ;

void av7110_ipack_free(struct ipack *p)
{
 vfree(p->buf);
}
