
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DTD_LINE_LENGTH_SHFT ;

__attribute__((used)) static inline u32 dtd_xfer_length_height(int line_length, int xfer_height)
{
 return (line_length << DTD_LINE_LENGTH_SHFT) | xfer_height;
}
