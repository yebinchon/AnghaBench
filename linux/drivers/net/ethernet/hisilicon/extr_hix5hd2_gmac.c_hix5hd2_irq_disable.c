
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_priv {scalar_t__ base; } ;


 scalar_t__ ENA_PMU_INT ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_irq_disable(struct hix5hd2_priv *priv)
{
 writel_relaxed(0, priv->base + ENA_PMU_INT);
}
