
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestmp_enable; } ;
struct TYPE_4__ {TYPE_1__ tx_rd_des23; } ;
struct sxgbe_tx_norm_desc {TYPE_2__ tdes23; } ;



__attribute__((used)) static void sxgbe_tx_enable_tstamp(struct sxgbe_tx_norm_desc *p)
{
 p->tdes23.tx_rd_des23.timestmp_enable = 1;
}
