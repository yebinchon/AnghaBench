
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic_provinfo {int dummy; } ;


 int kfree (struct vic_provinfo*) ;

void vic_provinfo_free(struct vic_provinfo *vp)
{
 kfree(vp);
}
