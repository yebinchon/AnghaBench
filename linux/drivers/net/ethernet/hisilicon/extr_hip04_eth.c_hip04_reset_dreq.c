
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hip04_priv {scalar_t__ sysctrl_base; } ;


 int RESET_DREQ_ALL ;
 scalar_t__ SC_PPE_RESET_DREQ ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hip04_reset_dreq(struct hip04_priv *priv)
{



}
