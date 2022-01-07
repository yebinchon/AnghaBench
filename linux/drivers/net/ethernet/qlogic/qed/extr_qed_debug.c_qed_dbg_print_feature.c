
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int pr_cont (char*,...) ;
 int pr_notice (char*,scalar_t__,int *) ;

__attribute__((used)) static void qed_dbg_print_feature(u8 *p_text_buf, u32 text_size)
{
 u32 i, precision = 80;

 if (!p_text_buf)
  return;

 pr_notice("\n%.*s", precision, p_text_buf);
 for (i = precision; i < text_size; i += precision)
  pr_cont("%.*s", precision, p_text_buf + i);
 pr_cont("\n");
}
