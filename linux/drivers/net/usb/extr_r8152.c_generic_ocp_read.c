
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r8152 {int flags; } ;


 int ENODEV ;
 int EPERM ;
 int RTL8152_UNPLUG ;
 int get_registers (struct r8152*,int,int,int,void*) ;
 int rtl_set_unplug (struct r8152*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int generic_ocp_read(struct r8152 *tp, u16 index, u16 size,
       void *data, u16 type)
{
 u16 limit = 64;
 int ret = 0;

 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return -ENODEV;


 if ((size & 3) || !size || (index & 3) || !data)
  return -EPERM;

 if ((u32)index + (u32)size > 0xffff)
  return -EPERM;

 while (size) {
  if (size > limit) {
   ret = get_registers(tp, index, type, limit, data);
   if (ret < 0)
    break;

   index += limit;
   data += limit;
   size -= limit;
  } else {
   ret = get_registers(tp, index, type, size, data);
   if (ret < 0)
    break;

   index += size;
   data += size;
   size = 0;
   break;
  }
 }

 if (ret == -ENODEV)
  rtl_set_unplug(tp);

 return ret;
}
