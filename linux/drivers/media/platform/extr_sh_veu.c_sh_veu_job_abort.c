
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_dev {int aborting; } ;



__attribute__((used)) static void sh_veu_job_abort(void *priv)
{
 struct sh_veu_dev *veu = priv;


 veu->aborting = 1;
}
