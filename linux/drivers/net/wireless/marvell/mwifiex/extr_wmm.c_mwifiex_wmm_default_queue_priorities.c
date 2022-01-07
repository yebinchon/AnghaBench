
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * queue_priority; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;


 int WMM_AC_BE ;
 int WMM_AC_BK ;
 int WMM_AC_VI ;
 int WMM_AC_VO ;

__attribute__((used)) static void mwifiex_wmm_default_queue_priorities(struct mwifiex_private *priv)
{

 priv->wmm.queue_priority[0] = WMM_AC_VO;
 priv->wmm.queue_priority[1] = WMM_AC_VI;
 priv->wmm.queue_priority[2] = WMM_AC_BE;
 priv->wmm.queue_priority[3] = WMM_AC_BK;
}
