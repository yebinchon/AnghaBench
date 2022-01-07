
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ringbuffer {int queue; } ;


 int dvb_ringbuffer_free (struct dvb_ringbuffer*) ;
 int dvb_ringbuffer_write (struct dvb_ringbuffer*,int const*,int) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static inline long aux_ring_buffer_write(struct dvb_ringbuffer *rbuf,
      const u8 *buf, unsigned long count)
{
 unsigned long todo = count;
 int free;

 while (todo > 0) {
  if (dvb_ringbuffer_free(rbuf) < 2048) {
   if (wait_event_interruptible(rbuf->queue,
           (dvb_ringbuffer_free(rbuf) >= 2048)))
    return count - todo;
  }
  free = dvb_ringbuffer_free(rbuf);
  if (free > todo)
   free = todo;
  dvb_ringbuffer_write(rbuf, buf, free);
  todo -= free;
  buf += free;
 }

 return count - todo;
}
