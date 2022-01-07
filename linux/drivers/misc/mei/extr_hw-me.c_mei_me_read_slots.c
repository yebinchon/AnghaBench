
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct mei_device {int dummy; } ;


 unsigned long MEI_SLOT_SIZE ;
 int mei_hcsr_set_hig (struct mei_device*) ;
 void* mei_me_mecbrw_read (struct mei_device*) ;
 int memcpy (void**,void**,unsigned long) ;

__attribute__((used)) static int mei_me_read_slots(struct mei_device *dev, unsigned char *buffer,
        unsigned long buffer_length)
{
 u32 *reg_buf = (u32 *)buffer;

 for (; buffer_length >= MEI_SLOT_SIZE; buffer_length -= MEI_SLOT_SIZE)
  *reg_buf++ = mei_me_mecbrw_read(dev);

 if (buffer_length > 0) {
  u32 reg = mei_me_mecbrw_read(dev);

  memcpy(reg_buf, &reg, buffer_length);
 }

 mei_hcsr_set_hig(dev);
 return 0;
}
