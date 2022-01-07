
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgec_cfg {int dummy; } ;



__attribute__((used)) static bool is_init_done(struct tgec_cfg *cfg)
{

 if (!cfg)
  return 1;

 return 0;
}
