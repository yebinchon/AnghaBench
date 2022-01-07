
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char* s_temp_buf ;

__attribute__((used)) static char *qed_get_buf_ptr(void *buf, u32 offset)
{
 return buf ? (char *)buf + offset : s_temp_buf;
}
