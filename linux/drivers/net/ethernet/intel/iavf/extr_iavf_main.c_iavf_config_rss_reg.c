
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int rss_key_size; int rss_lut_size; scalar_t__ rss_lut; scalar_t__ rss_key; struct iavf_hw hw; } ;


 int IAVF_VFQF_HKEY (int) ;
 int IAVF_VFQF_HLUT (int) ;
 int iavf_flush (struct iavf_hw*) ;
 int wr32 (struct iavf_hw*,int ,int ) ;

__attribute__((used)) static int iavf_config_rss_reg(struct iavf_adapter *adapter)
{
 struct iavf_hw *hw = &adapter->hw;
 u32 *dw;
 u16 i;

 dw = (u32 *)adapter->rss_key;
 for (i = 0; i <= adapter->rss_key_size / 4; i++)
  wr32(hw, IAVF_VFQF_HKEY(i), dw[i]);

 dw = (u32 *)adapter->rss_lut;
 for (i = 0; i <= adapter->rss_lut_size / 4; i++)
  wr32(hw, IAVF_VFQF_HLUT(i), dw[i]);

 iavf_flush(hw);

 return 0;
}
