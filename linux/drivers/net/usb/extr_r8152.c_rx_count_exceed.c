
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int rx_count; } ;


 scalar_t__ RTL8152_MAX_RX ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool rx_count_exceed(struct r8152 *tp)
{
 return atomic_read(&tp->rx_count) > RTL8152_MAX_RX;
}
