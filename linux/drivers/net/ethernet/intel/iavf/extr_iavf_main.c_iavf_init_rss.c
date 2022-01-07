
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int hena; int rss_key_size; scalar_t__ rss_key; TYPE_1__* vf_res; struct iavf_hw hw; } ;
struct TYPE_2__ {int vf_cap_flags; } ;


 int IAVF_DEFAULT_RSS_HENA ;
 int IAVF_DEFAULT_RSS_HENA_EXPANDED ;
 int IAVF_VFQF_HENA (int) ;
 int RSS_PF (struct iavf_adapter*) ;
 int VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 ;
 int iavf_config_rss (struct iavf_adapter*) ;
 int iavf_fill_rss_lut (struct iavf_adapter*) ;
 int netdev_rss_key_fill (void*,int ) ;
 int wr32 (struct iavf_hw*,int ,int ) ;

__attribute__((used)) static int iavf_init_rss(struct iavf_adapter *adapter)
{
 struct iavf_hw *hw = &adapter->hw;
 int ret;

 if (!RSS_PF(adapter)) {

  if (adapter->vf_res->vf_cap_flags &
      VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
   adapter->hena = IAVF_DEFAULT_RSS_HENA_EXPANDED;
  else
   adapter->hena = IAVF_DEFAULT_RSS_HENA;

  wr32(hw, IAVF_VFQF_HENA(0), (u32)adapter->hena);
  wr32(hw, IAVF_VFQF_HENA(1), (u32)(adapter->hena >> 32));
 }

 iavf_fill_rss_lut(adapter);
 netdev_rss_key_fill((void *)adapter->rss_key, adapter->rss_key_size);
 ret = iavf_config_rss(adapter);

 return ret;
}
