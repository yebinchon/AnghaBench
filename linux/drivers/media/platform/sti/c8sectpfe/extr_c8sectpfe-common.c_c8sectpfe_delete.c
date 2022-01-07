
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c8sectpfe {int num_feeds; int adapter; int * demux; } ;


 int dvb_unregister_adapter (int *) ;
 int kfree (struct c8sectpfe*) ;
 int unregister_dvb (int *) ;

__attribute__((used)) static void c8sectpfe_delete(struct c8sectpfe *c8sectpfe)
{
 int i;

 if (!c8sectpfe)
  return;

 for (i = 0; i < c8sectpfe->num_feeds; i++)
  unregister_dvb(&c8sectpfe->demux[i]);

 dvb_unregister_adapter(&c8sectpfe->adapter);

 kfree(c8sectpfe);
}
