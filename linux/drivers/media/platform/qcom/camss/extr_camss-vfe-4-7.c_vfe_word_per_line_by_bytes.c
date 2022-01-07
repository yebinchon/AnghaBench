
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CALC_WORD (int ,int,int) ;

__attribute__((used)) static int vfe_word_per_line_by_bytes(u32 bytes_per_line)
{
 return CALC_WORD(bytes_per_line, 1, 8);
}
