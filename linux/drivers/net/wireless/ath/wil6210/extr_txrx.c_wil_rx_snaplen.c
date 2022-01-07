
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ rx_align_2 ;

__attribute__((used)) static inline uint wil_rx_snaplen(void)
{
 return rx_align_2 ? 6 : 0;
}
