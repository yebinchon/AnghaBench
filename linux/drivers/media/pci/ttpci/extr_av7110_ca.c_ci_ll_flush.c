
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {int dummy; } ;


 int dvb_ringbuffer_flush_spinlock_wakeup (struct dvb_ringbuffer*) ;

__attribute__((used)) static void ci_ll_flush(struct dvb_ringbuffer *cirbuf, struct dvb_ringbuffer *ciwbuf)
{
 dvb_ringbuffer_flush_spinlock_wakeup(cirbuf);
 dvb_ringbuffer_flush_spinlock_wakeup(ciwbuf);
}
