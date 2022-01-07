; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_softc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_10__, %struct.ath_hw*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.ath_hw = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.ath9k_hw_capabilities, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ath_bus_ops = type { i32 (%struct.ath_common*)* }
%struct.ath_common = type { i32, i32, i32, i32, %struct.ath_bus_ops*, i32, i32, %struct.ath_softc*, i32, %struct.ath_hw*, i32*, %struct.TYPE_8__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AH_USE_EEPROM = common dso_local global i32 0, align 4
@ath9k_ioread32 = common dso_local global i32 0, align 4
@ath9k_multi_ioread32 = common dso_local global i32 0, align 4
@ath9k_iowrite32 = common dso_local global i32 0, align 4
@ath9k_reg_rmw = common dso_local global i32 0, align 4
@ATH_OP_INVALID = common dso_local global i32 0, align 4
@NL80211_DFS_UNSET = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@ath9k_ps_ops = common dso_local global i32 0, align 4
@ath9k_debug = common dso_local global i32 0, align 4
@ath9k_btcoex_enable = common dso_local global i32 0, align 4
@ath9k_led_active_high = common dso_local global i32 0, align 4
@ath9k_bt_ant_diversity = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_BT_ANT_DIV = common dso_local global i32 0, align 4
@ath9k_tasklet = common dso_local global i32 0, align 4
@ath9k_beacon_tasklet = common dso_local global i32 0, align 4
@ath_ps_full_sleep = common dso_local global i32 0, align 4
@ath_reset_work = common dso_local global i32 0, align 4
@ath_paprd_calibrate = common dso_local global i32 0, align 4
@ath_hw_pll_work = common dso_local global i32 0, align 4
@ath_hw_check_work = common dso_local global i32 0, align 4
@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ath_softc*, %struct.ath_bus_ops*)* @ath9k_init_softc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_softc(i32 %0, %struct.ath_softc* %1, %struct.ath_bus_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_bus_ops*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca %struct.ath9k_hw_capabilities*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ath_softc* %1, %struct.ath_softc** %6, align 8
  store %struct.ath_bus_ops* %2, %struct.ath_bus_ops** %7, align 8
  store %struct.ath_hw* null, %struct.ath_hw** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 21
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ath_hw* @devm_kzalloc(i32 %16, i32 44, i32 %17)
  store %struct.ath_hw* %18, %struct.ath_hw** %8, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %20 = icmp ne %struct.ath_hw* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %322

24:                                               ; preds = %3
  %25 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 21
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 15
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @AH_USE_EEPROM, align 4
  %40 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* @ath9k_ioread32, align 4
  %47 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @ath9k_multi_ioread32, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ath9k_iowrite32, align 4
  %55 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %56 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ath9k_reg_rmw, align 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 3
  store %struct.ath9k_hw_capabilities* %63, %struct.ath9k_hw_capabilities** %9, align 8
  %64 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %65 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %64)
  store %struct.ath_common* %65, %struct.ath_common** %10, align 8
  %66 = load i32, i32* @ATH_OP_INVALID, align 4
  %67 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %68 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %67, i32 0, i32 12
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %71 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 2
  store %struct.ath_hw* %70, %struct.ath_hw** %72, align 8
  %73 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %74 = load i32, i32* @NL80211_DFS_UNSET, align 4
  %75 = call i32 @dfs_pattern_detector_init(%struct.ath_common* %73, i32 %74)
  %76 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %77 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %76, i32 0, i32 20
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* @MAX_RATE_POWER, align 8
  %79 = add nsw i64 %78, 1
  %80 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %81 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %80, i32 0, i32 19
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %83 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %82, i32 0, i32 18
  %84 = call i32 @init_waitqueue_head(i32* %83)
  %85 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 17
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 0
  %89 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %90 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %89, i32 0, i32 16
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %90, align 8
  %91 = call i32 (...) @ath9k_is_chanctx_enabled()
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %24
  %94 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %95 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %94, i32 0, i32 16
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %24
  %99 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %100 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %99, i32 0, i32 2
  %101 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %102 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %101, i32 0, i32 11
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %102, align 8
  %103 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %7, align 8
  %104 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %105 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %104, i32 0, i32 4
  store %struct.ath_bus_ops* %103, %struct.ath_bus_ops** %105, align 8
  %106 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %107 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %106, i32 0, i32 10
  store i32* @ath9k_ps_ops, i32** %107, align 8
  %108 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %109 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %110 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %109, i32 0, i32 9
  store %struct.ath_hw* %108, %struct.ath_hw** %110, align 8
  %111 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %112 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %115 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %117 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %118 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %117, i32 0, i32 7
  store %struct.ath_softc* %116, %struct.ath_softc** %118, align 8
  %119 = load i32, i32* @ath9k_debug, align 4
  %120 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %121 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @ath9k_btcoex_enable, align 4
  %123 = icmp eq i32 %122, 1
  %124 = zext i1 %123 to i32
  %125 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %126 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %128 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %130 = call i32 @ath9k_init_pcoem_platform(%struct.ath_softc* %129)
  %131 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %132 = call i32 @ath9k_init_platform(%struct.ath_softc* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %98
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %322

137:                                              ; preds = %98
  %138 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %139 = call i32 @ath9k_of_init(%struct.ath_softc* %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %322

144:                                              ; preds = %137
  %145 = load i32, i32* @ath9k_led_active_high, align 4
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i32, i32* @ath9k_led_active_high, align 4
  %149 = icmp eq i32 %148, 1
  %150 = zext i1 %149 to i32
  %151 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %152 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %147, %144
  %155 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %156 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %154
  %160 = load i64, i64* @ath9k_bt_ant_diversity, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %9, align 8
  %164 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ATH9K_HW_CAP_BT_ANT_DIV, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %171 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %170, i32 0, i32 2
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %162, %159, %154
  %173 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %174 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %173, i32 0, i32 5
  %175 = call i32 @spin_lock_init(i32* %174)
  %176 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %177 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %176, i32 0, i32 14
  %178 = call i32 @spin_lock_init(i32* %177)
  %179 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %180 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %179, i32 0, i32 13
  %181 = call i32 @spin_lock_init(i32* %180)
  %182 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %183 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %182, i32 0, i32 12
  %184 = call i32 @spin_lock_init(i32* %183)
  %185 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %186 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %185, i32 0, i32 11
  %187 = call i32 @spin_lock_init(i32* %186)
  %188 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %189 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %188, i32 0, i32 10
  %190 = call i32 @mutex_init(i32* %189)
  %191 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %192 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %191, i32 0, i32 9
  %193 = load i32, i32* @ath9k_tasklet, align 4
  %194 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %195 = ptrtoint %struct.ath_softc* %194 to i64
  %196 = call i32 @tasklet_init(i32* %192, i32 %193, i64 %195)
  %197 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %198 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %197, i32 0, i32 8
  %199 = load i32, i32* @ath9k_beacon_tasklet, align 4
  %200 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %201 = ptrtoint %struct.ath_softc* %200 to i64
  %202 = call i32 @tasklet_init(i32* %198, i32 %199, i64 %201)
  %203 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %204 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %203, i32 0, i32 7
  %205 = load i32, i32* @ath_ps_full_sleep, align 4
  %206 = call i32 @timer_setup(i32* %204, i32 %205, i32 0)
  %207 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %208 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %207, i32 0, i32 6
  %209 = load i32, i32* @ath_reset_work, align 4
  %210 = call i32 @INIT_WORK(i32* %208, i32 %209)
  %211 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %212 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %211, i32 0, i32 5
  %213 = load i32, i32* @ath_paprd_calibrate, align 4
  %214 = call i32 @INIT_WORK(i32* %212, i32 %213)
  %215 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %216 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %215, i32 0, i32 4
  %217 = load i32, i32* @ath_hw_pll_work, align 4
  %218 = call i32 @INIT_DELAYED_WORK(i32* %216, i32 %217)
  %219 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %220 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %219, i32 0, i32 3
  %221 = load i32, i32* @ath_hw_check_work, align 4
  %222 = call i32 @INIT_DELAYED_WORK(i32* %220, i32 %221)
  %223 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %224 = call i32 @ath9k_init_channel_context(%struct.ath_softc* %223)
  %225 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %226 = call i32 @ath_read_cachesize(%struct.ath_common* %225, i32* %13)
  %227 = load i32, i32* %13, align 4
  %228 = shl i32 %227, 2
  %229 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %230 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %232 = call i32 @ath9k_hw_init(%struct.ath_hw* %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %172
  br label %314

236:                                              ; preds = %172
  %237 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %238 = call i32 @ath9k_init_queues(%struct.ath_softc* %237)
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %311

242:                                              ; preds = %236
  %243 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %244 = call i32 @ath9k_init_btcoex(%struct.ath_softc* %243)
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %11, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  br label %286

248:                                              ; preds = %242
  %249 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %250 = call i32 @ath9k_cmn_init_channels_rates(%struct.ath_common* %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %286

254:                                              ; preds = %248
  %255 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %256 = call i32 @ath9k_init_p2p(%struct.ath_softc* %255)
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %286

260:                                              ; preds = %254
  %261 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %262 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %261, i32 0, i32 2
  %263 = load %struct.ath_hw*, %struct.ath_hw** %262, align 8
  %264 = call i32 @ath9k_cmn_init_crypto(%struct.ath_hw* %263)
  %265 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %266 = call i32 @ath9k_init_misc(%struct.ath_softc* %265)
  %267 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %268 = call i32 @ath_chanctx_init(%struct.ath_softc* %267)
  %269 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %270 = call i32 @ath9k_offchannel_init(%struct.ath_softc* %269)
  %271 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %272 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %271, i32 0, i32 4
  %273 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %272, align 8
  %274 = getelementptr inbounds %struct.ath_bus_ops, %struct.ath_bus_ops* %273, i32 0, i32 0
  %275 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %274, align 8
  %276 = icmp ne i32 (%struct.ath_common*)* %275, null
  br i1 %276, label %277, label %285

277:                                              ; preds = %260
  %278 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %279 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %278, i32 0, i32 4
  %280 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %279, align 8
  %281 = getelementptr inbounds %struct.ath_bus_ops, %struct.ath_bus_ops* %280, i32 0, i32 0
  %282 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %281, align 8
  %283 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %284 = call i32 %282(%struct.ath_common* %283)
  br label %285

285:                                              ; preds = %277, %260
  store i32 0, i32* %4, align 4
  br label %322

286:                                              ; preds = %259, %253, %247
  store i32 0, i32* %12, align 4
  br label %287

287:                                              ; preds = %307, %286
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %310

291:                                              ; preds = %287
  %292 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %293 = load i32, i32* %12, align 4
  %294 = call i64 @ATH_TXQ_SETUP(%struct.ath_softc* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %291
  %297 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %298 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %299 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = call i32 @ath_tx_cleanupq(%struct.ath_softc* %297, i32* %304)
  br label %306

306:                                              ; preds = %296, %291
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  br label %287

310:                                              ; preds = %287
  br label %311

311:                                              ; preds = %310, %241
  %312 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %313 = call i32 @ath9k_hw_deinit(%struct.ath_hw* %312)
  br label %314

314:                                              ; preds = %311, %235
  %315 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %316 = call i32 @ath9k_eeprom_release(%struct.ath_softc* %315)
  %317 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %318 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @dev_kfree_skb_any(i32 %319)
  %321 = load i32, i32* %11, align 4
  store i32 %321, i32* %4, align 4
  br label %322

322:                                              ; preds = %314, %285, %142, %135, %21
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local %struct.ath_hw* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dfs_pattern_detector_init(%struct.ath_common*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @ath9k_init_pcoem_platform(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_init_platform(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_of_init(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ath9k_init_channel_context(%struct.ath_softc*) #1

declare dso_local i32 @ath_read_cachesize(%struct.ath_common*, i32*) #1

declare dso_local i32 @ath9k_hw_init(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_init_queues(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_init_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_cmn_init_channels_rates(%struct.ath_common*) #1

declare dso_local i32 @ath9k_init_p2p(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_cmn_init_crypto(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_init_misc(%struct.ath_softc*) #1

declare dso_local i32 @ath_chanctx_init(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_offchannel_init(%struct.ath_softc*) #1

declare dso_local i64 @ATH_TXQ_SETUP(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_tx_cleanupq(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_hw_deinit(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_eeprom_release(%struct.ath_softc*) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
