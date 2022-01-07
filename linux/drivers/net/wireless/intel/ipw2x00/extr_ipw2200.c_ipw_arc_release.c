
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int CBD_RESET_REG_PRINCETON_RESET ;
 int IPW_DEBUG_TRACE (char*) ;
 int IPW_RESET_REG ;
 int ipw_clear_bit (struct ipw_priv*,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void ipw_arc_release(struct ipw_priv *priv)
{
 IPW_DEBUG_TRACE(">>\n");
 mdelay(5);

 ipw_clear_bit(priv, IPW_RESET_REG, CBD_RESET_REG_PRINCETON_RESET);


 mdelay(5);
}
