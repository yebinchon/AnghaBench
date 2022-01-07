
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dpaa_buffer_layout {scalar_t__ priv_data_size; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 scalar_t__ DPAA_FD_DATA_ALIGNMENT ;
 scalar_t__ DPAA_HASH_RESULTS_SIZE ;
 scalar_t__ DPAA_PARSE_RESULTS_SIZE ;
 scalar_t__ DPAA_TIME_STAMP_SIZE ;

__attribute__((used)) static inline u16 dpaa_get_headroom(struct dpaa_buffer_layout *bl)
{
 u16 headroom;
 headroom = (u16)(bl->priv_data_size + DPAA_PARSE_RESULTS_SIZE +
  DPAA_TIME_STAMP_SIZE + DPAA_HASH_RESULTS_SIZE);

 return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
           DPAA_FD_DATA_ALIGNMENT) :
     headroom;
}
