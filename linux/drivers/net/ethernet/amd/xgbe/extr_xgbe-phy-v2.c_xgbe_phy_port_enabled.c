
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int pp0; } ;


 int CONN_TYPE ;
 int PORT_SPEEDS ;
 int XP_GET_BITS (int ,int ,int ) ;
 int XP_PROP_0 ;

__attribute__((used)) static bool xgbe_phy_port_enabled(struct xgbe_prv_data *pdata)
{
 if (!XP_GET_BITS(pdata->pp0, XP_PROP_0, PORT_SPEEDS))
  return 0;
 if (!XP_GET_BITS(pdata->pp0, XP_PROP_0, CONN_TYPE))
  return 0;

 return 1;
}
