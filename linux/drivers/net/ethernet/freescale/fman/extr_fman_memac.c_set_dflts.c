
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memac_cfg {int reset_on_init; int promiscuous_mode_enable; int pause_ignore; int pause_quanta; int max_frame_length; int tx_ipg_length; } ;


 int DEFAULT_FRAME_LENGTH ;
 int DEFAULT_PAUSE_QUANTA ;
 int DEFAULT_TX_IPG_LENGTH ;

__attribute__((used)) static void set_dflts(struct memac_cfg *cfg)
{
 cfg->reset_on_init = 0;
 cfg->promiscuous_mode_enable = 0;
 cfg->pause_ignore = 0;
 cfg->tx_ipg_length = DEFAULT_TX_IPG_LENGTH;
 cfg->max_frame_length = DEFAULT_FRAME_LENGTH;
 cfg->pause_quanta = DEFAULT_PAUSE_QUANTA;
}
