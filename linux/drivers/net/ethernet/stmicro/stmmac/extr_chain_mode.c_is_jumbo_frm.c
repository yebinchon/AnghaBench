
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_SIZE_2KiB ;
 int BUF_SIZE_8KiB ;

__attribute__((used)) static unsigned int is_jumbo_frm(int len, int enh_desc)
{
 unsigned int ret = 0;

 if ((enh_desc && (len > BUF_SIZE_8KiB)) ||
     (!enh_desc && (len > BUF_SIZE_2KiB))) {
  ret = 1;
 }

 return ret;
}
