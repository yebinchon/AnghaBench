
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int dummy; } ;


 int go7007_init_encoder (struct go7007*) ;
 scalar_t__ go7007_load_encoder (struct go7007*) ;

int go7007_reset_encoder(struct go7007 *go)
{
 if (go7007_load_encoder(go) < 0)
  return -1;
 return go7007_init_encoder(go);
}
