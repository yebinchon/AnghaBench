
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_canfd_priv {scalar_t__ cmd_len; } ;



__attribute__((used)) static struct peak_canfd_priv *pucan_init_cmd(struct peak_canfd_priv *priv)
{
 priv->cmd_len = 0;
 return priv;
}
