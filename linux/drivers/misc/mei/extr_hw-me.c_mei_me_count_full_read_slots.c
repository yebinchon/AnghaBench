
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dev; } ;


 int EOVERFLOW ;
 int ME_CBD_HRA ;
 int ME_CBRP_HRA ;
 int ME_CBWP_HRA ;
 int dev_dbg (int ,char*,unsigned char) ;
 int mei_me_mecsr_read (struct mei_device*) ;

__attribute__((used)) static int mei_me_count_full_read_slots(struct mei_device *dev)
{
 u32 me_csr;
 char read_ptr, write_ptr;
 unsigned char buffer_depth, filled_slots;

 me_csr = mei_me_mecsr_read(dev);
 buffer_depth = (unsigned char)((me_csr & ME_CBD_HRA) >> 24);
 read_ptr = (char) ((me_csr & ME_CBRP_HRA) >> 8);
 write_ptr = (char) ((me_csr & ME_CBWP_HRA) >> 16);
 filled_slots = (unsigned char) (write_ptr - read_ptr);


 if (filled_slots > buffer_depth)
  return -EOVERFLOW;

 dev_dbg(dev->dev, "filled_slots =%08x\n", filled_slots);
 return (int)filled_slots;
}
