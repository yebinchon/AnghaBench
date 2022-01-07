
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int atohx (unsigned char*,unsigned char*) ;
 int pr_err (char*) ;

__attribute__((used)) static int parse_hex_line(unsigned char *fw_data, unsigned char *addr,
     unsigned char *data, int *dataLength,
     unsigned char *addr_has_changed) {

 int count = 0;
 unsigned char *src, dst;

 if (*fw_data++ != ':') {
  pr_err("invalid firmware file\n");
  return -EFAULT;
 }


 for (src = fw_data; *src != '\n'; src += 2) {
  atohx(&dst, src);

  switch (count) {
  case 0:
   *dataLength = dst;
   break;
  case 1:
   addr[2] = dst;
   break;
  case 2:
   addr[3] = dst;
   break;
  case 3:

   if (dst == 0x04)
    *addr_has_changed = 1;
   else
    *addr_has_changed = 0;
   break;
  case 4:
  case 5:
   if (*addr_has_changed)
    addr[(count - 4)] = dst;
   else
    data[(count - 4)] = dst;
   break;
  default:
   data[(count - 4)] = dst;
   break;
  }
  count++;
 }


 return (count * 2) + 2;
}
