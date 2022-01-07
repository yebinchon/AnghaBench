
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_priv {int ndev; } ;


 int cpsw_cbs_resume ;
 int cpsw_mqprio_resume ;
 int cpsw_restore_vlans ;
 int for_each_slave (struct cpsw_priv*,int ,struct cpsw_priv*) ;
 int vlan_for_each (int ,int ,struct cpsw_priv*) ;

__attribute__((used)) static void cpsw_restore(struct cpsw_priv *priv)
{

 vlan_for_each(priv->ndev, cpsw_restore_vlans, priv);


 for_each_slave(priv, cpsw_mqprio_resume, priv);


 for_each_slave(priv, cpsw_cbs_resume, priv);
}
