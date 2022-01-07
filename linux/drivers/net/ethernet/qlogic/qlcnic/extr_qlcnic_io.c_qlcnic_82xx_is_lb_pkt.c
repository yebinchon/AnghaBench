
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ STATUS_CKSUM_LOOP ;
 scalar_t__ qlcnic_get_sts_status (int ) ;

__attribute__((used)) static inline int qlcnic_82xx_is_lb_pkt(u64 sts_data)
{
 return (qlcnic_get_sts_status(sts_data) == STATUS_CKSUM_LOOP) ? 1 : 0;
}
