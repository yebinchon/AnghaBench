
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int H_CBRP ;
 int H_CBWP ;
 int mei_hcsr_read (struct mei_device*) ;

__attribute__((used)) static unsigned char mei_hbuf_filled_slots(struct mei_device *dev)
{
 u32 hcsr;
 char read_ptr, write_ptr;

 hcsr = mei_hcsr_read(dev);

 read_ptr = (char) ((hcsr & H_CBRP) >> 8);
 write_ptr = (char) ((hcsr & H_CBWP) >> 16);

 return (unsigned char) (write_ptr - read_ptr);
}
