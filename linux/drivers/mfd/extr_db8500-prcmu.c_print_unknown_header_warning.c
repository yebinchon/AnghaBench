
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int pr_warn (char*,int ,int ) ;

__attribute__((used)) static inline void print_unknown_header_warning(u8 n, u8 header)
{
 pr_warn("prcmu: Unknown message header (%d) in mailbox %d\n",
  header, n);
}
