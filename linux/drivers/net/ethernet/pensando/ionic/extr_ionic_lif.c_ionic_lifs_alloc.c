
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_lif {int dummy; } ;
struct ionic {int lifbits; int lifs; } ;


 int INIT_LIST_HEAD (int *) ;
 int PTR_ERR_OR_ZERO (struct ionic_lif*) ;
 struct ionic_lif* ionic_lif_alloc (struct ionic*,int ) ;
 int set_bit (int ,int ) ;

int ionic_lifs_alloc(struct ionic *ionic)
{
 struct ionic_lif *lif;

 INIT_LIST_HEAD(&ionic->lifs);


 set_bit(0, ionic->lifbits);
 lif = ionic_lif_alloc(ionic, 0);

 return PTR_ERR_OR_ZERO(lif);
}
