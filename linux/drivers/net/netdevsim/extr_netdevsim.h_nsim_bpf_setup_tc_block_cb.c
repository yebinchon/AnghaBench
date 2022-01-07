
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int
nsim_bpf_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
      void *cb_priv)
{
 return -EOPNOTSUPP;
}
