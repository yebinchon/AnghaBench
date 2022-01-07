; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_init_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_init_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32, i64, i64, %struct.TYPE_3__, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32* }
%struct.ath_bus_ops = type { i32 }
%struct.ath_common = type { i32, i32, i32, %struct.ath5k_hw*, %struct.ieee80211_hw*, %struct.ath5k_hw*, %struct.ath_bus_ops*, i32* }

@SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@if_comb = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_5_10_MHZ = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@ATH_STAT_INVALID = common dso_local global i32 0, align 4
@ath5k_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ath\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@ath5k_common_ops = common dso_local global i32 0, align 4
@AR5K_INIT_RETRY_SHORT = common dso_local global i32 0, align 4
@AR5K_INIT_RETRY_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Atheros AR%s chip found (MAC: 0x%x, PHY: 0x%x)\0A\00", align 1
@AR5K_VERSION_MAC = common dso_local global i32 0, align 4
@AR5K_MODE_11A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"RF%s 2GHz radio found (0x%x)\0A\00", align 1
@AR5K_VERSION_RAD = common dso_local global i32 0, align 4
@AR5K_MODE_11B = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"RF%s 5GHz radio found (0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"RF%s multiband radio found (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_init_ah(%struct.ath5k_hw* %0, %struct.ath_bus_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ath_bus_ops*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ath_bus_ops* %1, %struct.ath_bus_ops** %5, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 16
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %11, align 8
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 15
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %13, i32 %16)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = load i32, i32* @SUPPORTS_RC_TABLE, align 4
  %20 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %18, i32 %19)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %23 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %21, i32 %22)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %25 = load i32, i32* @MFP_CAPABLE, align 4
  %26 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %24, i32 %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %28 = load i32, i32* @SIGNAL_DBM, align 4
  %29 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %27, i32 %28)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %31 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %32 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %30, i32 %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %34 = load i32, i32* @HOST_BROADCAST_PS_BUFFERING, align 4
  %35 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %33, i32 %34)
  %36 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  store i32* @if_comb, i32** %54, align 8
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %60, i32 0, i32 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @WIPHY_FLAG_SUPPORTS_5_10_MHZ, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 8
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 3, i32* %76, align 8
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 3, i32* %80, align 4
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %81, i32 0, i32 0
  store i32 2, i32* %82, align 8
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %87 = call i32 @wiphy_ext_feature_set(%struct.TYPE_4__* %85, i32 %86)
  %88 = load i32, i32* @ATH_STAT_INVALID, align 4
  %89 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %90 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @__set_bit(i32 %88, i32 %91)
  %93 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %95 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %94, i32 0, i32 14
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %97 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %96, i32 0, i32 0
  store i32 1000, i32* %97, align 8
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %99 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %98, i32 0, i32 13
  %100 = call i32 @mutex_init(i32* %99)
  %101 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %101, i32 0, i32 12
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %104, i32 0, i32 11
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %108 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %107, i32 0, i32 10
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %110, i32 0, i32 9
  %112 = call i32 @spin_lock_init(i32* %111)
  %113 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %114 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ath5k_intr, align 4
  %117 = load i32, i32* @IRQF_SHARED, align 4
  %118 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %119 = call i32 @request_irq(i32 %115, i32 %116, i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.ath5k_hw* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %2
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %124 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %309

125:                                              ; preds = %2
  %126 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %127 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %126)
  store %struct.ath_common* %127, %struct.ath_common** %7, align 8
  %128 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %129 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %128, i32 0, i32 7
  store i32* @ath5k_common_ops, i32** %129, align 8
  %130 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %5, align 8
  %131 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %132 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %131, i32 0, i32 6
  store %struct.ath_bus_ops* %130, %struct.ath_bus_ops** %132, align 8
  %133 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %134 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %135 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %134, i32 0, i32 5
  store %struct.ath5k_hw* %133, %struct.ath5k_hw** %135, align 8
  %136 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %137 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %138 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %137, i32 0, i32 4
  store %struct.ieee80211_hw* %136, %struct.ieee80211_hw** %138, align 8
  %139 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %140 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %141 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %140, i32 0, i32 3
  store %struct.ath5k_hw* %139, %struct.ath5k_hw** %141, align 8
  %142 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %143 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %142, i32 0, i32 0
  store i32 40, i32* %143, align 8
  %144 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %145 = call i32 @ath5k_read_cachesize(%struct.ath_common* %144, i32* %9)
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 %146, 2
  %148 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %149 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %151 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %150, i32 0, i32 2
  %152 = call i32 @spin_lock_init(i32* %151)
  %153 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %154 = call i32 @ath5k_hw_init(%struct.ath5k_hw* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %125
  br label %303

158:                                              ; preds = %125
  %159 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %160 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %166 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %165, i32 0, i32 1
  store i32 4, i32* %166, align 4
  %167 = load i32, i32* @AR5K_INIT_RETRY_SHORT, align 4
  %168 = load i32, i32* @AR5K_INIT_RETRY_LONG, align 4
  %169 = call i32 @max(i32 %167, i32 %168)
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %171 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %164, %158
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %174 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %173, i32 0, i32 2
  store i32 4, i32* %174, align 8
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %176 = call i32 @ath5k_init(%struct.ieee80211_hw* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %300

180:                                              ; preds = %172
  %181 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %182 = load i32, i32* @AR5K_VERSION_MAC, align 4
  %183 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %184 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @ath5k_chip_name(i32 %182, i64 %185)
  %187 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %188 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %191 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %181, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %186, i64 %189, i32 %192)
  %194 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %195 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %292, label %198

198:                                              ; preds = %180
  %199 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %200 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %259

203:                                              ; preds = %198
  %204 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %205 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %259, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @AR5K_MODE_11A, align 4
  %210 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %211 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @test_bit(i32 %209, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %208
  %217 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %218 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %219 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %220 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ath5k_chip_name(i32 %218, i64 %221)
  %223 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %224 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %217, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %222, i64 %225)
  br label %258

227:                                              ; preds = %208
  %228 = load i32, i32* @AR5K_MODE_11B, align 4
  %229 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %230 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @test_bit(i32 %228, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %246, label %235

235:                                              ; preds = %227
  %236 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %237 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %238 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %239 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @ath5k_chip_name(i32 %237, i64 %240)
  %242 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %243 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %236, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %241, i64 %244)
  br label %257

246:                                              ; preds = %227
  %247 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %248 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %249 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %250 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @ath5k_chip_name(i32 %248, i64 %251)
  %253 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %254 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %247, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %252, i64 %255)
  br label %257

257:                                              ; preds = %246, %235
  br label %258

258:                                              ; preds = %257, %216
  br label %291

259:                                              ; preds = %203, %198
  %260 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %261 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %290

264:                                              ; preds = %259
  %265 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %266 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %264
  %270 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %271 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %272 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %273 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @ath5k_chip_name(i32 %271, i64 %274)
  %276 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %277 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %276, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  %279 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %270, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %275, i64 %278)
  %280 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %281 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %282 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %283 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @ath5k_chip_name(i32 %281, i64 %284)
  %286 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %287 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %280, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %285, i64 %288)
  br label %290

290:                                              ; preds = %269, %264, %259
  br label %291

291:                                              ; preds = %290, %258
  br label %292

292:                                              ; preds = %291, %180
  %293 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %294 = call i32 @ath5k_debug_init_device(%struct.ath5k_hw* %293)
  %295 = load i32, i32* @ATH_STAT_INVALID, align 4
  %296 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %297 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @__clear_bit(i32 %295, i32 %298)
  store i32 0, i32* %3, align 4
  br label %311

300:                                              ; preds = %179
  %301 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %302 = call i32 @ath5k_hw_deinit(%struct.ath5k_hw* %301)
  br label %303

303:                                              ; preds = %300, %157
  %304 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %305 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %308 = call i32 @free_irq(i32 %306, %struct.ath5k_hw* %307)
  br label %309

309:                                              ; preds = %303, %122
  %310 = load i32, i32* %8, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %292
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_read_cachesize(%struct.ath_common*, i32*) #1

declare dso_local i32 @ath5k_hw_init(%struct.ath5k_hw*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ath5k_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @ATH5K_INFO(%struct.ath5k_hw*, i8*, i32, i64, ...) #1

declare dso_local i32 @ath5k_chip_name(i32, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath5k_debug_init_device(%struct.ath5k_hw*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @ath5k_hw_deinit(%struct.ath5k_hw*) #1

declare dso_local i32 @free_irq(i32, %struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
