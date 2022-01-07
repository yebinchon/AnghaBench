
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ar9170 {int current_density; int current_factor; } ;
struct TYPE_2__ {int ampdu_settings; } ;
struct _carl9170_tx_superframe {TYPE_1__ s; } ;


 int CARL9170_TX_SUPER_AMPDU_COMMIT_DENSITY ;
 int CARL9170_TX_SUPER_AMPDU_COMMIT_FACTOR ;
 int CARL9170_TX_SUPER_AMPDU_DENSITY ;
 int CARL9170_TX_SUPER_AMPDU_DENSITY_S ;
 int CARL9170_TX_SUPER_AMPDU_FACTOR ;
 int CARL9170_TX_SUPER_AMPDU_FACTOR_S ;

__attribute__((used)) static void carl9170_set_ampdu_params(struct ar9170 *ar, struct sk_buff *skb)
{
 struct _carl9170_tx_superframe *super;
 int tmp;

 super = (void *) skb->data;

 tmp = (super->s.ampdu_settings & CARL9170_TX_SUPER_AMPDU_DENSITY) <<
  CARL9170_TX_SUPER_AMPDU_DENSITY_S;
 if (tmp != ar->current_density) {
  ar->current_density = tmp;
  super->s.ampdu_settings |=
   CARL9170_TX_SUPER_AMPDU_COMMIT_DENSITY;
 }

 tmp = (super->s.ampdu_settings & CARL9170_TX_SUPER_AMPDU_FACTOR) <<
  CARL9170_TX_SUPER_AMPDU_FACTOR_S;

 if (tmp != ar->current_factor) {
  ar->current_factor = tmp;
  super->s.ampdu_settings |=
   CARL9170_TX_SUPER_AMPDU_COMMIT_FACTOR;
 }
}
