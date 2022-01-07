
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ memchr_inv (int*,int,int) ;

__attribute__((used)) static bool erased_chunk_check_and_fixup(u8 *data_buf, int data_len)
{
 u8 empty1, empty2;







 empty1 = data_buf[3];
 empty2 = data_buf[175];





 if ((empty1 == 0x54 && empty2 == 0xff) ||
     (empty1 == 0xff && empty2 == 0x54)) {
  data_buf[3] = 0xff;
  data_buf[175] = 0xff;
 }





 if (memchr_inv(data_buf, 0xff, data_len)) {
  data_buf[3] = empty1;
  data_buf[175] = empty2;

  return 0;
 }

 return 1;
}
