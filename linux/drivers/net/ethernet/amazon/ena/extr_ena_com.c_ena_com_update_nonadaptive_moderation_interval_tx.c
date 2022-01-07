
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_com_dev {int intr_moder_tx_interval; int intr_delay_resolution; } ;


 int ena_com_update_nonadaptive_moderation_interval (int ,int ,int *) ;

int ena_com_update_nonadaptive_moderation_interval_tx(struct ena_com_dev *ena_dev,
            u32 tx_coalesce_usecs)
{
 return ena_com_update_nonadaptive_moderation_interval(tx_coalesce_usecs,
             ena_dev->intr_delay_resolution,
             &ena_dev->intr_moder_tx_interval);
}
