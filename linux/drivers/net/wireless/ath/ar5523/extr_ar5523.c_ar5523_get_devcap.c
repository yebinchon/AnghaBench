
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5523 {int dummy; } ;


 int CAP_ANALOG_2GHz_REVISION ;
 int CAP_ANALOG_5GHz_REVISION ;
 int CAP_BURST_SUPPORT ;
 int CAP_CHAN_SPREAD_SUPPORT ;
 int CAP_CHAP_TUNING_SUPPORT ;
 int CAP_CIPHER_AES_CCM ;
 int CAP_CIPHER_TKIP ;
 int CAP_COMPRESS_SUPPORT ;
 int CAP_CONNECTION_ID_MAX ;
 int CAP_DEVICE_TYPE ;
 int CAP_FAST_FRAMES_SUPPORT ;
 int CAP_HIGH_2GHZ_CHAN ;
 int CAP_HIGH_5GHZ_CHAN ;
 int CAP_LOW_2GHZ_CHAN ;
 int CAP_LOW_5GHZ_CHAN ;
 int CAP_MAC_REVISION ;
 int CAP_MAC_VERSION ;
 int CAP_MIC_TKIP ;
 int CAP_PHY_REVISION ;
 int CAP_REG_CAP_BITS ;
 int CAP_REG_DOMAIN ;
 int CAP_TARGET_REVISION ;
 int CAP_TARGET_VERSION ;
 int CAP_TOTAL_QUEUES ;
 int CAP_TURBOG_SUPPORT ;
 int CAP_TURBO_PRIME_SUPPORT ;
 int CAP_TWICE_ANTENNAGAIN_2G ;
 int CAP_TWICE_ANTENNAGAIN_5G ;
 int CAP_WIRELESS_MODES ;
 int CAP_WME_SUPPORT ;
 int GETCAP (int ) ;

__attribute__((used)) static int ar5523_get_devcap(struct ar5523 *ar)
{







 int error;
 u32 cap;


 do { error = ar5523_get_capability(ar, CAP_TARGET_VERSION, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_TARGET_VERSION", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_TARGET_REVISION, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_TARGET_REVISION", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_MAC_VERSION, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_MAC_VERSION", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_MAC_REVISION, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_MAC_REVISION", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_PHY_REVISION, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_PHY_REVISION", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_ANALOG_5GHz_REVISION, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_ANALOG_5GHz_REVISION", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_ANALOG_2GHz_REVISION, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_ANALOG_2GHz_REVISION", cap); } while (0);

 do { error = ar5523_get_capability(ar, CAP_REG_DOMAIN, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_REG_DOMAIN", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_REG_CAP_BITS, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_REG_CAP_BITS", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_WIRELESS_MODES, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_WIRELESS_MODES", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_CHAN_SPREAD_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_CHAN_SPREAD_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_COMPRESS_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_COMPRESS_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_BURST_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_BURST_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_FAST_FRAMES_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_FAST_FRAMES_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_CHAP_TUNING_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_CHAP_TUNING_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_TURBOG_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_TURBOG_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_TURBO_PRIME_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_TURBO_PRIME_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_DEVICE_TYPE, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_DEVICE_TYPE", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_WME_SUPPORT, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_WME_SUPPORT", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_TOTAL_QUEUES, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_TOTAL_QUEUES", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_CONNECTION_ID_MAX, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_CONNECTION_ID_MAX", cap); } while (0);

 do { error = ar5523_get_capability(ar, CAP_LOW_5GHZ_CHAN, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_LOW_5GHZ_CHAN", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_HIGH_5GHZ_CHAN, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_HIGH_5GHZ_CHAN", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_LOW_2GHZ_CHAN, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_LOW_2GHZ_CHAN", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_HIGH_2GHZ_CHAN, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_HIGH_2GHZ_CHAN", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_TWICE_ANTENNAGAIN_5G, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_TWICE_ANTENNAGAIN_5G", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_TWICE_ANTENNAGAIN_2G, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_TWICE_ANTENNAGAIN_2G", cap); } while (0);

 do { error = ar5523_get_capability(ar, CAP_CIPHER_AES_CCM, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_CIPHER_AES_CCM", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_CIPHER_TKIP, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_CIPHER_TKIP", cap); } while (0);
 do { error = ar5523_get_capability(ar, CAP_MIC_TKIP, &cap); if (error != 0) return error; ar5523_info(ar, "Cap: " "%s=0x%08x\n", "CAP_MIC_TKIP", cap); } while (0);
 return 0;
}
