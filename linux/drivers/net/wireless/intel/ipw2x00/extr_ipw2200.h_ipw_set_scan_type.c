
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_scan_request_ext {int* scan_type; } ;



__attribute__((used)) static inline void ipw_set_scan_type(struct ipw_scan_request_ext *scan,
         u8 index, u8 scan_type)
{
 if (index % 2)
  scan->scan_type[index / 2] =
      (scan->scan_type[index / 2] & 0xF0) | (scan_type & 0x0F);
 else
  scan->scan_type[index / 2] =
      (scan->scan_type[index / 2] & 0x0F) |
      ((scan_type & 0x0F) << 4);
}
