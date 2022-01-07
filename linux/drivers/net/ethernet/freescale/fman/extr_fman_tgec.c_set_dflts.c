
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgec_cfg {int promiscuous_mode_enable; int pause_ignore; int pause_quant; int max_frame_length; int tx_ipg_length; } ;


 int DEFAULT_MAX_FRAME_LENGTH ;
 int DEFAULT_PAUSE_QUANT ;
 int DEFAULT_TX_IPG_LENGTH ;

__attribute__((used)) static void set_dflts(struct tgec_cfg *cfg)
{
 cfg->promiscuous_mode_enable = 0;
 cfg->pause_ignore = 0;
 cfg->tx_ipg_length = DEFAULT_TX_IPG_LENGTH;
 cfg->max_frame_length = DEFAULT_MAX_FRAME_LENGTH;
 cfg->pause_quant = DEFAULT_PAUSE_QUANT;
}
