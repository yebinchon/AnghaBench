
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_tx_norm_desc {int dummy; } ;


 int memset (struct sxgbe_tx_norm_desc*,int ,int) ;

__attribute__((used)) static void sxgbe_release_tx_desc(struct sxgbe_tx_norm_desc *p)
{
 memset(p, 0, sizeof(*p));
}
