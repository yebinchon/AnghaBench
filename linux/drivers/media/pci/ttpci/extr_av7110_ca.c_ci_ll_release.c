
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {int * data; } ;


 int vfree (int *) ;

__attribute__((used)) static void ci_ll_release(struct dvb_ringbuffer *cirbuf, struct dvb_ringbuffer *ciwbuf)
{
 vfree(cirbuf->data);
 cirbuf->data = ((void*)0);
 vfree(ciwbuf->data);
 ciwbuf->data = ((void*)0);
}
