
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_priv {scalar_t__ base; } ;


 int DEF_INT_MASK ;
 scalar_t__ ENA_PMU_INT ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_irq_enable(struct hix5hd2_priv *priv)
{
 writel_relaxed(DEF_INT_MASK, priv->base + ENA_PMU_INT);
}
