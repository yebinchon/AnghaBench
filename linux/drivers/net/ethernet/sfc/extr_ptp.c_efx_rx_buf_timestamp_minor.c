
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct efx_nic {int rx_packet_ts_offset; } ;
typedef int __le32 ;


 int __le32_to_cpup (int const*) ;

__attribute__((used)) static inline u32 efx_rx_buf_timestamp_minor(struct efx_nic *efx, const u8 *eh)
{



 const u8 *data = eh + efx->rx_packet_ts_offset;
 return (u32)data[0] |
        (u32)data[1] << 8 |
        (u32)data[2] << 16 |
        (u32)data[3] << 24;

}
