
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bdx_priv {TYPE_1__* ndev; } ;
struct TYPE_2__ {int* dev_addr; } ;


 int ENTER ;
 int READ_REG (struct bdx_priv*,int ) ;
 int RET (int ) ;
 int regUNC_MAC0_A ;
 int regUNC_MAC1_A ;
 int regUNC_MAC2_A ;

__attribute__((used)) static int bdx_read_mac(struct bdx_priv *priv)
{
 u16 macAddress[3], i;
 ENTER;

 macAddress[2] = READ_REG(priv, regUNC_MAC0_A);
 macAddress[2] = READ_REG(priv, regUNC_MAC0_A);
 macAddress[1] = READ_REG(priv, regUNC_MAC1_A);
 macAddress[1] = READ_REG(priv, regUNC_MAC1_A);
 macAddress[0] = READ_REG(priv, regUNC_MAC2_A);
 macAddress[0] = READ_REG(priv, regUNC_MAC2_A);
 for (i = 0; i < 3; i++) {
  priv->ndev->dev_addr[i * 2 + 1] = macAddress[i];
  priv->ndev->dev_addr[i * 2] = macAddress[i] >> 8;
 }
 RET(0);
}
