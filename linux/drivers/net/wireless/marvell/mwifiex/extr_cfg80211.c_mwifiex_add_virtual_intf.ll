; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_add_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_add_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.wiphy* }
%struct.wiphy = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vif_params = type { i32 }
%struct.mwifiex_adapter = type { i32, %struct.TYPE_5__, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mwifiex_private = type { i32, %struct.wireless_dev, %struct.net_device*, i32*, i32*, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.net_device = type { i32, i32, i32*, i32, i32, %struct.wireless_dev* }

@EFAULT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot create multiple sta/adhoc ifaces\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MWIFIEX_BSS_TYPE_STA = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"could not get free private struct\0A\00", align 1
@MWIFIEX_DATA_FRAME_TYPE_ETH_II = common dso_local global i8* null, align 8
@MWIFIEX_BSS_ROLE_STA = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot create multiple AP ifaces\0A\00", align 1
@MWIFIEX_BSS_TYPE_UAP = common dso_local global i8* null, align 8
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"cannot create multiple P2P ifaces\0A\00", align 1
@MWIFIEX_BSS_TYPE_P2P = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"type not supported\0A\00", align 1
@ether_setup = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"no memory available for netdevice\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HostCmd_CMD_SET_BSS_MODE = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@BAND_A = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@MWIFIEX_DEFAULT_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@MWIFIEX_MIN_DATA_HEADER_LEN = common dso_local global i64 0, align 8
@mwifiex_ethtool_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"MWIFIEX_DFS_CAC%s\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"cannot alloc DFS CAC queue\0A\00", align 1
@mwifiex_dfs_cac_work_queue = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"MWIFIEX_DFS_CHSW%s\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"cannot alloc DFS channel sw queue\0A\00", align 1
@mwifiex_dfs_chan_sw_work_queue = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot register network device\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"info: %s: Marvell 802.11 Adapter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wireless_dev* @mwifiex_add_virtual_intf(%struct.wiphy* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.mwifiex_adapter*, align 8
  %13 = alloca %struct.mwifiex_private*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %18 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %17)
  store %struct.mwifiex_adapter* %18, %struct.mwifiex_adapter** %12, align 8
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %20 = icmp ne %struct.mwifiex_adapter* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.wireless_dev* @ERR_PTR(i32 %23)
  store %struct.wireless_dev* %24, %struct.wireless_dev** %6, align 8
  br label %501

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %208 [
    i32 128, label %27
    i32 129, label %27
    i32 132, label %27
    i32 131, label %86
    i32 130, label %140
  ]

27:                                               ; preds = %25, %25, %25
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %33 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %38, i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.wireless_dev* @ERR_PTR(i32 %42)
  store %struct.wireless_dev* %43, %struct.wireless_dev** %6, align 8
  br label %501

44:                                               ; preds = %27
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %46 = load i8*, i8** @MWIFIEX_BSS_TYPE_STA, align 8
  %47 = call %struct.mwifiex_private* @mwifiex_get_unused_priv_by_bss_type(%struct.mwifiex_adapter* %45, i8* %46)
  store %struct.mwifiex_private* %47, %struct.mwifiex_private** %13, align 8
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %49 = icmp ne %struct.mwifiex_private* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %51, i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.wireless_dev* @ERR_PTR(i32 %55)
  store %struct.wireless_dev* %56, %struct.wireless_dev** %6, align 8
  br label %501

57:                                               ; preds = %44
  %58 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 1
  store %struct.wiphy* %58, %struct.wiphy** %61, align 8
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %63, i32 0, i32 0
  store i32 129, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %69 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %68, i32 0, i32 0
  store i32 129, i32* %69, align 8
  br label %74

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i8*, i8** @MWIFIEX_BSS_TYPE_STA, align 8
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 12
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @MWIFIEX_DATA_FRAME_TYPE_ETH_II, align 8
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %81, i32 0, i32 10
  store i8* null, i8** %82, align 8
  %83 = load i8*, i8** @MWIFIEX_BSS_ROLE_STA, align 8
  %84 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %85 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %84, i32 0, i32 9
  store i8* %83, i8** %85, align 8
  br label %215

86:                                               ; preds = %25
  %87 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %88 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %92 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %98 = load i32, i32* @ERROR, align 4
  %99 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %97, i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  %102 = call %struct.wireless_dev* @ERR_PTR(i32 %101)
  store %struct.wireless_dev* %102, %struct.wireless_dev** %6, align 8
  br label %501

103:                                              ; preds = %86
  %104 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %105 = load i8*, i8** @MWIFIEX_BSS_TYPE_UAP, align 8
  %106 = call %struct.mwifiex_private* @mwifiex_get_unused_priv_by_bss_type(%struct.mwifiex_adapter* %104, i8* %105)
  store %struct.mwifiex_private* %106, %struct.mwifiex_private** %13, align 8
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %108 = icmp ne %struct.mwifiex_private* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %111 = load i32, i32* @ERROR, align 4
  %112 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %110, i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EFAULT, align 4
  %114 = sub nsw i32 0, %113
  %115 = call %struct.wireless_dev* @ERR_PTR(i32 %114)
  store %struct.wireless_dev* %115, %struct.wireless_dev** %6, align 8
  br label %501

116:                                              ; preds = %103
  %117 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %118 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %119 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %119, i32 0, i32 1
  store %struct.wiphy* %117, %struct.wiphy** %120, align 8
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %122 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %122, i32 0, i32 0
  store i32 131, i32* %123, align 8
  %124 = load i8*, i8** @MWIFIEX_BSS_TYPE_UAP, align 8
  %125 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %126 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %125, i32 0, i32 12
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @MWIFIEX_DATA_FRAME_TYPE_ETH_II, align 8
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %129 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %128, i32 0, i32 11
  store i8* %127, i8** %129, align 8
  %130 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %131 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %130, i32 0, i32 10
  store i8* null, i8** %131, align 8
  %132 = load i8*, i8** @MWIFIEX_BSS_ROLE_UAP, align 8
  %133 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %134 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %133, i32 0, i32 9
  store i8* %132, i8** %134, align 8
  %135 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %136 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %135, i32 0, i32 8
  store i32 0, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %139 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %215

140:                                              ; preds = %25
  %141 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %142 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %146 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %144, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %140
  %151 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %152 = load i32, i32* @ERROR, align 4
  %153 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %151, i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  %156 = call %struct.wireless_dev* @ERR_PTR(i32 %155)
  store %struct.wireless_dev* %156, %struct.wireless_dev** %6, align 8
  br label %501

157:                                              ; preds = %140
  %158 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %159 = load i8*, i8** @MWIFIEX_BSS_TYPE_P2P, align 8
  %160 = call %struct.mwifiex_private* @mwifiex_get_unused_priv_by_bss_type(%struct.mwifiex_adapter* %158, i8* %159)
  store %struct.mwifiex_private* %160, %struct.mwifiex_private** %13, align 8
  %161 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %162 = icmp ne %struct.mwifiex_private* %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %157
  %164 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %165 = load i32, i32* @ERROR, align 4
  %166 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %164, i32 %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32, i32* @EFAULT, align 4
  %168 = sub nsw i32 0, %167
  %169 = call %struct.wireless_dev* @ERR_PTR(i32 %168)
  store %struct.wireless_dev* %169, %struct.wireless_dev** %6, align 8
  br label %501

170:                                              ; preds = %157
  %171 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %172 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %173 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %173, i32 0, i32 1
  store %struct.wiphy* %171, %struct.wiphy** %174, align 8
  %175 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %176 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %176, i32 0, i32 0
  store i32 130, i32* %177, align 8
  %178 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %179 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %178, i32 0, i32 0
  store i32 130, i32* %179, align 8
  %180 = load i8*, i8** @MWIFIEX_BSS_TYPE_P2P, align 8
  %181 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %182 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %181, i32 0, i32 12
  store i8* %180, i8** %182, align 8
  %183 = load i8*, i8** @MWIFIEX_DATA_FRAME_TYPE_ETH_II, align 8
  %184 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %185 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %184, i32 0, i32 11
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** @MWIFIEX_BSS_ROLE_STA, align 8
  %187 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %188 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %187, i32 0, i32 10
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** @MWIFIEX_BSS_ROLE_STA, align 8
  %190 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %191 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %190, i32 0, i32 9
  store i8* %189, i8** %191, align 8
  %192 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %193 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %192, i32 0, i32 8
  store i32 0, i32* %193, align 4
  %194 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %195 = call i32 @mwifiex_cfg80211_init_p2p_client(%struct.mwifiex_private* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %170
  %198 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %199 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %198, i32 0, i32 1
  %200 = call i32 @memset(%struct.wireless_dev* %199, i32 0, i32 16)
  %201 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %202 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %202, i32 0, i32 0
  store i32 128, i32* %203, align 8
  %204 = load i32, i32* @EFAULT, align 4
  %205 = sub nsw i32 0, %204
  %206 = call %struct.wireless_dev* @ERR_PTR(i32 %205)
  store %struct.wireless_dev* %206, %struct.wireless_dev** %6, align 8
  br label %501

207:                                              ; preds = %170
  br label %215

208:                                              ; preds = %25
  %209 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %210 = load i32, i32* @ERROR, align 4
  %211 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %209, i32 %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  %214 = call %struct.wireless_dev* @ERR_PTR(i32 %213)
  store %struct.wireless_dev* %214, %struct.wireless_dev** %6, align 8
  br label %501

215:                                              ; preds = %207, %116, %74
  %216 = load i8*, i8** %8, align 8
  %217 = load i8, i8* %9, align 1
  %218 = load i32, i32* @ether_setup, align 4
  %219 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %220 = call %struct.net_device* @alloc_netdev_mqs(i32 8, i8* %216, i8 zeroext %217, i32 %218, i32 %219, i32 1)
  store %struct.net_device* %220, %struct.net_device** %14, align 8
  %221 = load %struct.net_device*, %struct.net_device** %14, align 8
  %222 = icmp ne %struct.net_device* %221, null
  br i1 %222, label %229, label %223

223:                                              ; preds = %215
  %224 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %225 = load i32, i32* @ERROR, align 4
  %226 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %224, i32 %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %227 = load i32, i32* @ENOMEM, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %16, align 4
  br label %490

229:                                              ; preds = %215
  %230 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %231 = load %struct.net_device*, %struct.net_device** %14, align 8
  %232 = call i32 @mwifiex_init_priv_params(%struct.mwifiex_private* %230, %struct.net_device* %231)
  %233 = load %struct.net_device*, %struct.net_device** %14, align 8
  %234 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %235 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %234, i32 0, i32 2
  store %struct.net_device* %233, %struct.net_device** %235, align 8
  %236 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %237 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %258, label %240

240:                                              ; preds = %229
  %241 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %242 = load %struct.net_device*, %struct.net_device** %14, align 8
  %243 = call i32 @mwifiex_set_mac_address(%struct.mwifiex_private* %241, %struct.net_device* %242, i32 0, i32* null)
  %244 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %245 = load i32, i32* @HostCmd_CMD_SET_BSS_MODE, align 4
  %246 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %247 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %244, i32 %245, i32 %246, i32 0, i32* null, i32 1)
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %489

251:                                              ; preds = %240
  %252 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %253 = call i32 @mwifiex_sta_init_cmd(%struct.mwifiex_private* %252, i32 0, i32 0)
  store i32 %253, i32* %16, align 4
  %254 = load i32, i32* %16, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %488

257:                                              ; preds = %251
  br label %258

258:                                              ; preds = %257, %229
  %259 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %260 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %259, i32 0, i32 0
  %261 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %260, align 8
  %262 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %261, i64 %262
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %267 = call i32 @mwifiex_setup_ht_caps(i32* %265, %struct.mwifiex_private* %266)
  %268 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %269 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %258
  %273 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %274 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %273, i32 0, i32 0
  %275 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %274, align 8
  %276 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %275, i64 %276
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %281 = call i32 @mwifiex_setup_vht_caps(i32* %279, %struct.mwifiex_private* %280)
  br label %282

282:                                              ; preds = %272, %258
  %283 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %284 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @BAND_A, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %282
  %290 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %291 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %290, i32 0, i32 0
  %292 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %291, align 8
  %293 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %292, i64 %293
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 1
  %297 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %298 = call i32 @mwifiex_setup_ht_caps(i32* %296, %struct.mwifiex_private* %297)
  br label %299

299:                                              ; preds = %289, %282
  %300 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %301 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @BAND_A, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %299
  %307 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %308 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %306
  %312 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %313 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %312, i32 0, i32 0
  %314 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %313, align 8
  %315 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %314, i64 %315
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %320 = call i32 @mwifiex_setup_vht_caps(i32* %318, %struct.mwifiex_private* %319)
  br label %321

321:                                              ; preds = %311, %306, %299
  %322 = load %struct.net_device*, %struct.net_device** %14, align 8
  %323 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %324 = call i32 @wiphy_net(%struct.wiphy* %323)
  %325 = call i32 @dev_net_set(%struct.net_device* %322, i32 %324)
  %326 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %327 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %326, i32 0, i32 1
  %328 = load %struct.net_device*, %struct.net_device** %14, align 8
  %329 = getelementptr inbounds %struct.net_device, %struct.net_device* %328, i32 0, i32 5
  store %struct.wireless_dev* %327, %struct.wireless_dev** %329, align 8
  %330 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %331 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.net_device*, %struct.net_device** %14, align 8
  %334 = getelementptr inbounds %struct.net_device, %struct.net_device* %333, i32 0, i32 5
  %335 = load %struct.wireless_dev*, %struct.wireless_dev** %334, align 8
  %336 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %335, i32 0, i32 0
  store i32 %332, i32* %336, align 8
  %337 = load %struct.net_device*, %struct.net_device** %14, align 8
  %338 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %339 = call i32 @wiphy_dev(%struct.wiphy* %338)
  %340 = call i32 @SET_NETDEV_DEV(%struct.net_device* %337, i32 %339)
  %341 = load i32, i32* @IFF_BROADCAST, align 4
  %342 = load i32, i32* @IFF_MULTICAST, align 4
  %343 = or i32 %341, %342
  %344 = load %struct.net_device*, %struct.net_device** %14, align 8
  %345 = getelementptr inbounds %struct.net_device, %struct.net_device* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 8
  %348 = load i32, i32* @MWIFIEX_DEFAULT_WATCHDOG_TIMEOUT, align 4
  %349 = load %struct.net_device*, %struct.net_device** %14, align 8
  %350 = getelementptr inbounds %struct.net_device, %struct.net_device* %349, i32 0, i32 4
  store i32 %348, i32* %350, align 4
  %351 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %352 = load %struct.net_device*, %struct.net_device** %14, align 8
  %353 = getelementptr inbounds %struct.net_device, %struct.net_device* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %355, %351
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %353, align 8
  %358 = load %struct.net_device*, %struct.net_device** %14, align 8
  %359 = getelementptr inbounds %struct.net_device, %struct.net_device* %358, i32 0, i32 2
  store i32* @mwifiex_ethtool_ops, i32** %359, align 8
  %360 = load %struct.net_device*, %struct.net_device** %14, align 8
  %361 = call i8* @netdev_priv(%struct.net_device* %360)
  store i8* %361, i8** %15, align 8
  %362 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %363 = ptrtoint %struct.mwifiex_private* %362 to i64
  %364 = load i8*, i8** %15, align 8
  %365 = bitcast i8* %364 to i64*
  store i64 %363, i64* %365, align 8
  %366 = load %struct.net_device*, %struct.net_device** %14, align 8
  %367 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %368 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @SET_NETDEV_DEV(%struct.net_device* %366, i32 %369)
  %371 = load i32, i32* @WQ_HIGHPRI, align 4
  %372 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* @WQ_UNBOUND, align 4
  %375 = or i32 %373, %374
  %376 = load i8*, i8** %8, align 8
  %377 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %375, i32 1, i8* %376)
  %378 = bitcast i8* %377 to i32*
  %379 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %380 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %379, i32 0, i32 3
  store i32* %378, i32** %380, align 8
  %381 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %382 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %381, i32 0, i32 3
  %383 = load i32*, i32** %382, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %391, label %385

385:                                              ; preds = %321
  %386 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %387 = load i32, i32* @ERROR, align 4
  %388 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %386, i32 %387, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %389 = load i32, i32* @ENOMEM, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %16, align 4
  br label %483

391:                                              ; preds = %321
  %392 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %393 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %392, i32 0, i32 7
  %394 = load i32, i32* @mwifiex_dfs_cac_work_queue, align 4
  %395 = call i32 @INIT_DELAYED_WORK(i32* %393, i32 %394)
  %396 = load i32, i32* @WQ_HIGHPRI, align 4
  %397 = load i32, i32* @WQ_UNBOUND, align 4
  %398 = or i32 %396, %397
  %399 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %400 = or i32 %398, %399
  %401 = load i8*, i8** %8, align 8
  %402 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %400, i32 1, i8* %401)
  %403 = bitcast i8* %402 to i32*
  %404 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %405 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %404, i32 0, i32 4
  store i32* %403, i32** %405, align 8
  %406 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %407 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %406, i32 0, i32 4
  %408 = load i32*, i32** %407, align 8
  %409 = icmp ne i32* %408, null
  br i1 %409, label %416, label %410

410:                                              ; preds = %391
  %411 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %412 = load i32, i32* @ERROR, align 4
  %413 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %411, i32 %412, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %414 = load i32, i32* @ENOMEM, align 4
  %415 = sub nsw i32 0, %414
  store i32 %415, i32* %16, align 4
  br label %476

416:                                              ; preds = %391
  %417 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %418 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %417, i32 0, i32 6
  %419 = load i32, i32* @mwifiex_dfs_chan_sw_work_queue, align 4
  %420 = call i32 @INIT_DELAYED_WORK(i32* %418, i32 %419)
  %421 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %422 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %421, i32 0, i32 5
  %423 = call i32 @mutex_init(i32* %422)
  %424 = load %struct.net_device*, %struct.net_device** %14, align 8
  %425 = call i64 @register_netdevice(%struct.net_device* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %416
  %428 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %429 = load i32, i32* @ERROR, align 4
  %430 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %428, i32 %429, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %431 = load i32, i32* @EFAULT, align 4
  %432 = sub nsw i32 0, %431
  store i32 %432, i32* %16, align 4
  br label %469

433:                                              ; preds = %416
  %434 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %435 = load i32, i32* @INFO, align 4
  %436 = load %struct.net_device*, %struct.net_device** %14, align 8
  %437 = getelementptr inbounds %struct.net_device, %struct.net_device* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %434, i32 %435, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %438)
  %440 = load i32, i32* %10, align 4
  switch i32 %440, label %459 [
    i32 128, label %441
    i32 129, label %441
    i32 132, label %441
    i32 131, label %447
    i32 130, label %453
  ]

441:                                              ; preds = %433, %433, %433
  %442 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %443 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %444, align 4
  br label %466

447:                                              ; preds = %433
  %448 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %449 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %450, align 4
  br label %466

453:                                              ; preds = %433
  %454 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %455 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %456, align 4
  br label %466

459:                                              ; preds = %433
  %460 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %461 = load i32, i32* @ERROR, align 4
  %462 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %460, i32 %461, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %463 = load i32, i32* @EINVAL, align 4
  %464 = sub nsw i32 0, %463
  %465 = call %struct.wireless_dev* @ERR_PTR(i32 %464)
  store %struct.wireless_dev* %465, %struct.wireless_dev** %6, align 8
  br label %501

466:                                              ; preds = %453, %447, %441
  %467 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %468 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %467, i32 0, i32 1
  store %struct.wireless_dev* %468, %struct.wireless_dev** %6, align 8
  br label %501

469:                                              ; preds = %427
  %470 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %471 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %470, i32 0, i32 4
  %472 = load i32*, i32** %471, align 8
  %473 = call i32 @destroy_workqueue(i32* %472)
  %474 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %475 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %474, i32 0, i32 4
  store i32* null, i32** %475, align 8
  br label %476

476:                                              ; preds = %469, %410
  %477 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %478 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %477, i32 0, i32 3
  %479 = load i32*, i32** %478, align 8
  %480 = call i32 @destroy_workqueue(i32* %479)
  %481 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %482 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %481, i32 0, i32 3
  store i32* null, i32** %482, align 8
  br label %483

483:                                              ; preds = %476, %385
  %484 = load %struct.net_device*, %struct.net_device** %14, align 8
  %485 = call i32 @free_netdev(%struct.net_device* %484)
  %486 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %487 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %486, i32 0, i32 2
  store %struct.net_device* null, %struct.net_device** %487, align 8
  br label %488

488:                                              ; preds = %483, %256
  br label %489

489:                                              ; preds = %488, %250
  br label %490

490:                                              ; preds = %489, %223
  %491 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %492 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %491, i32 0, i32 1
  %493 = call i32 @memset(%struct.wireless_dev* %492, i32 0, i32 16)
  %494 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %495 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %495, i32 0, i32 0
  store i32 128, i32* %496, align 8
  %497 = load %struct.mwifiex_private*, %struct.mwifiex_private** %13, align 8
  %498 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %497, i32 0, i32 0
  store i32 128, i32* %498, align 8
  %499 = load i32, i32* %16, align 4
  %500 = call %struct.wireless_dev* @ERR_PTR(i32 %499)
  store %struct.wireless_dev* %500, %struct.wireless_dev** %6, align 8
  br label %501

501:                                              ; preds = %490, %466, %459, %208, %197, %163, %150, %109, %96, %50, %37, %21
  %502 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %502
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_unused_priv_by_bss_type(%struct.mwifiex_adapter*, i8*) #1

declare dso_local i32 @mwifiex_cfg80211_init_p2p_client(%struct.mwifiex_private*) #1

declare dso_local i32 @memset(%struct.wireless_dev*, i32, i32) #1

declare dso_local %struct.net_device* @alloc_netdev_mqs(i32, i8*, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @mwifiex_init_priv_params(%struct.mwifiex_private*, %struct.net_device*) #1

declare dso_local i32 @mwifiex_set_mac_address(%struct.mwifiex_private*, %struct.net_device*, i32, i32*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_sta_init_cmd(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @mwifiex_setup_ht_caps(i32*, %struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_setup_vht_caps(i32*, %struct.mwifiex_private*) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_net(%struct.wiphy*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_dev(%struct.wiphy*) #1

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @alloc_workqueue(i8*, i32, i32, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
