
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (int ,int ) ;

__attribute__((used)) static inline u32
octeon_droq_get_bufcount(u32 buf_size, u32 total_len)
{
 return DIV_ROUND_UP(total_len, buf_size);
}
