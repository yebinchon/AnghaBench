
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int nsim_bpf_setup_tc_block_cb (int,void*,void*) ;

__attribute__((used)) static int
nsim_setup_tc_block_cb(enum tc_setup_type type, void *type_data, void *cb_priv)
{
 return nsim_bpf_setup_tc_block_cb(type, type_data, cb_priv);
}
