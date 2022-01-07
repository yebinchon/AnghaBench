
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int fw_capabilities; } ;


 int ARRAY_SIZE (int ) ;
 int WMI_FW_CAPABILITY_CHANNEL_4 ;
 int test_bit (int ,int ) ;
 int wil_60ghz_channels ;

__attribute__((used)) static int wil_num_supported_channels(struct wil6210_priv *wil)
{
 int num_channels = ARRAY_SIZE(wil_60ghz_channels);

 if (!test_bit(WMI_FW_CAPABILITY_CHANNEL_4, wil->fw_capabilities))
  num_channels--;

 return num_channels;
}
