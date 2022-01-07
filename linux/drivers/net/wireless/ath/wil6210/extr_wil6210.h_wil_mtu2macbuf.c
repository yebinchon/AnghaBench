
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 scalar_t__ WIL_MAX_MPDU_OVERHEAD ;

__attribute__((used)) static inline u32 wil_mtu2macbuf(u32 mtu)
{
 return ALIGN(mtu + WIL_MAX_MPDU_OVERHEAD, 8);
}
