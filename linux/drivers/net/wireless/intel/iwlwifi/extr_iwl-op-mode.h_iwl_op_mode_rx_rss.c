
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct napi_struct {int dummy; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_op_mode {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rx_rss ) (struct iwl_op_mode*,struct napi_struct*,struct iwl_rx_cmd_buffer*,unsigned int) ;} ;


 int stub1 (struct iwl_op_mode*,struct napi_struct*,struct iwl_rx_cmd_buffer*,unsigned int) ;

__attribute__((used)) static inline void iwl_op_mode_rx_rss(struct iwl_op_mode *op_mode,
          struct napi_struct *napi,
          struct iwl_rx_cmd_buffer *rxb,
          unsigned int queue)
{
 op_mode->ops->rx_rss(op_mode, napi, rxb, queue);
}
