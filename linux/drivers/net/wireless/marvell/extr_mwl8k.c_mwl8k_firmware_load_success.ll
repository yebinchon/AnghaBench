; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_firmware_load_success.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_firmware_load_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { i32, i32, i32, i32*, i32, %struct.TYPE_4__*, i64, i64, i32*, i32, i32, i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.ieee80211_hw* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ieee80211_hw = type { i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Cannot start firmware\0A\00", align 1
@REDUCED_TX_HEADROOM = common dso_local global i32 0, align 4
@MWL8K_TX_WMM_QUEUES = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@AP_LINK_PS = common dso_local global i32 0, align 4
@mwl8k_finalize_join_worker = common dso_local global i32 0, align 4
@mwl8k_watchdog_ba_events = common dso_local global i32 0, align 4
@mwl8k_hw_restart_work = common dso_local global i32 0, align 4
@mwl8k_tx_poll = common dso_local global i32 0, align 4
@mwl8k_rx_poll = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@ap_if_comb = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl8k_priv*)* @mwl8k_firmware_load_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_firmware_load_success(%struct.mwl8k_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %3, align 8
  %7 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %7, i32 0, i32 23
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call i32 @mwl8k_load_firmware(%struct.ieee80211_hw* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %13 = call i32 @mwl8k_release_firmware(%struct.mwl8k_priv* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i32 @wiphy_err(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %249

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %25, i32 0, i32 22
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @REDUCED_TX_HEADROOM, align 4
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @MWL8K_TX_WMM_QUEUES, align 4
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %42 = load i32, i32* @SIGNAL_DBM, align 4
  %43 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %41, i32 %42)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = load i32, i32* @HAS_RATE_CONTROL, align 4
  %46 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %44, i32 %45)
  %47 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %47, i32 0, i32 22
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = load i32, i32* @AP_LINK_PS, align 4
  %54 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %32
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 1
  store i32 4, i32* %57, align 4
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %58, i32 0, i32 2
  store i32 4, i32* %59, align 8
  %60 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %61 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %60, i32 0, i32 21
  store i64 0, i64* %61, align 8
  %62 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %62, i32 0, i32 20
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %70 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %69, i32 0, i32 19
  %71 = load i32, i32* @mwl8k_finalize_join_worker, align 4
  %72 = call i32 @INIT_WORK(i32* %70, i32 %71)
  %73 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %74 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %73, i32 0, i32 18
  %75 = load i32, i32* @mwl8k_watchdog_ba_events, align 4
  %76 = call i32 @INIT_WORK(i32* %74, i32 %75)
  %77 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %78 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %77, i32 0, i32 17
  %79 = load i32, i32* @mwl8k_hw_restart_work, align 4
  %80 = call i32 @INIT_WORK(i32* %78, i32 %79)
  %81 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %82 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %81, i32 0, i32 16
  %83 = load i32, i32* @mwl8k_tx_poll, align 4
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %85 = ptrtoint %struct.ieee80211_hw* %84 to i64
  %86 = call i32 @tasklet_init(i32* %82, i32 %83, i64 %85)
  %87 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %88 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %87, i32 0, i32 16
  %89 = call i32 @tasklet_disable(i32* %88)
  %90 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %91 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %90, i32 0, i32 15
  %92 = load i32, i32* @mwl8k_rx_poll, align 4
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %94 = ptrtoint %struct.ieee80211_hw* %93 to i64
  %95 = call i32 @tasklet_init(i32* %91, i32 %92, i64 %94)
  %96 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %97 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %96, i32 0, i32 15
  %98 = call i32 @tasklet_disable(i32* %97)
  %99 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %100 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %103 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %102, i32 0, i32 2
  %104 = call i32* @pci_alloc_consistent(i32 %101, i32 4, i32* %103)
  %105 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %106 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %108 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %55
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %249

114:                                              ; preds = %55
  %115 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %116 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %115, i32 0, i32 14
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %119 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %118, i32 0, i32 13
  store i32* null, i32** %119, align 8
  %120 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %121 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %120, i32 0, i32 12
  store i64 0, i64* %121, align 8
  %122 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %123 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %122, i32 0, i32 11
  store i32* null, i32** %123, align 8
  %124 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %125 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %124, i32 0, i32 10
  %126 = call i32 @spin_lock_init(i32* %125)
  %127 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %128 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %127, i32 0, i32 9
  %129 = call i32 @spin_lock_init(i32* %128)
  %130 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %131 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %130, i32 0, i32 8
  store i32* null, i32** %131, align 8
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %133 = call i32 @mwl8k_probe_hw(%struct.ieee80211_hw* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %114
  br label %231

137:                                              ; preds = %114
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %139 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %138, i32 0, i32 3
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %143 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %137
  %147 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %148 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %147, i32 0, i32 5
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %146, %137
  %154 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %155 = call i32 @BIT(i32 %154)
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %157 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %156, i32 0, i32 3
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %155
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %163 = call i32 @BIT(i32 %162)
  %164 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %165 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %164, i32 0, i32 3
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %163
  store i32 %169, i32* %167, align 4
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %171 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %170, i32 0, i32 3
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  store i32* @ap_if_comb, i32** %173, align 8
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %175 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %174, i32 0, i32 3
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  br label %178

178:                                              ; preds = %153, %146
  %179 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %180 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %178
  %184 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %185 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %184, i32 0, i32 5
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %183, %178
  %191 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %192 = call i32 @BIT(i32 %191)
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %193, i32 0, i32 3
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %192
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %190, %183
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %201 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %200, i32 0, i32 3
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %204 = call i32 @wiphy_ext_feature_set(%struct.TYPE_5__* %202, i32 %203)
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %206 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %199
  %210 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %211 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %210, i32 0, i32 3
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = call i32 @wiphy_err(%struct.TYPE_5__* %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %215

214:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %249

215:                                              ; preds = %209
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %225, %215
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %219 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %218)
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @mwl8k_txq_deinit(%struct.ieee80211_hw* %222, i32 %223)
  br label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %216

228:                                              ; preds = %216
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %230 = call i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw* %229, i32 0)
  br label %231

231:                                              ; preds = %228, %136
  %232 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %233 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %247

236:                                              ; preds = %231
  %237 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %238 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %241 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %244 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @pci_free_consistent(i32 %239, i32 4, i32* %242, i32 %245)
  br label %247

247:                                              ; preds = %236, %231
  %248 = load i32, i32* %6, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %247, %214, %111, %16
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @mwl8k_load_firmware(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_release_firmware(%struct.mwl8k_priv*) #1

declare dso_local i32 @wiphy_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mwl8k_probe_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_txq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
