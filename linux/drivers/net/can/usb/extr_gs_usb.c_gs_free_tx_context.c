
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_tx_context {int echo_id; } ;


 int GS_MAX_TX_URBS ;

__attribute__((used)) static void gs_free_tx_context(struct gs_tx_context *txc)
{
 txc->echo_id = GS_MAX_TX_URBS;
}
