
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 void* recv_buffer_fast_alloc (int ) ;

__attribute__((used)) static inline void *octeon_fast_packet_alloc(u32 size)
{
 return recv_buffer_fast_alloc(size);
}
