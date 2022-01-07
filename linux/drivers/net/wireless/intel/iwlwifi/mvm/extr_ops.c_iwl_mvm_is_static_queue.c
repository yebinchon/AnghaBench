
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int aux_queue; int probe_queue; int p2p_dev_queue; int snif_queue; } ;



__attribute__((used)) static int iwl_mvm_is_static_queue(struct iwl_mvm *mvm, int queue)
{
 return queue == mvm->aux_queue || queue == mvm->probe_queue ||
  queue == mvm->p2p_dev_queue || queue == mvm->snif_queue;
}
