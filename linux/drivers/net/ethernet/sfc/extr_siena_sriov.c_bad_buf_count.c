
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efx_qword_t ;


 unsigned int EFX_BUF_SIZE ;

__attribute__((used)) static bool bad_buf_count(unsigned buf_count, unsigned max_entry_count)
{
 unsigned max_buf_count = max_entry_count *
  sizeof(efx_qword_t) / EFX_BUF_SIZE;

 return ((buf_count & (buf_count - 1)) || buf_count > max_buf_count);
}
