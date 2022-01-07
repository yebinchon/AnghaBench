
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_port_cfg {int dummy; } ;



__attribute__((used)) static bool is_init_done(struct fman_port_cfg *cfg)
{

 if (!cfg)
  return 1;

 return 0;
}
