
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwtstamp_config {scalar_t__ rx_filter; } ;


 scalar_t__ HWTSTAMP_FILTER_ALL ;

__attribute__((used)) static inline bool mlx5e_rx_hw_stamp(struct hwtstamp_config *config)
{
 return config->rx_filter == HWTSTAMP_FILTER_ALL;
}
