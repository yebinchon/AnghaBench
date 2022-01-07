
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DTD_1D_SHFT ;
 int DTD_DATA_TYPE_SHFT ;
 int DTD_EVEN_LINE_SKIP_SHFT ;
 int DTD_FIELD_SHFT ;
 int DTD_NOTIFY_SHFT ;
 int DTD_ODD_LINE_SKIP_SHFT ;

__attribute__((used)) static inline u32 dtd_type_ctl_stride(int type, bool notify, int field,
   bool one_d, bool even_line_skip, bool odd_line_skip,
   int line_stride)
{
 return (type << DTD_DATA_TYPE_SHFT) | (notify << DTD_NOTIFY_SHFT) |
  (field << DTD_FIELD_SHFT) | (one_d << DTD_1D_SHFT) |
  (even_line_skip << DTD_EVEN_LINE_SKIP_SHFT) |
  (odd_line_skip << DTD_ODD_LINE_SKIP_SHFT) |
  line_stride;
}
