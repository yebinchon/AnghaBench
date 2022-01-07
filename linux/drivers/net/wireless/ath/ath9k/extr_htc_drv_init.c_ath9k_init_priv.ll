; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_hw*, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hw = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32** }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ath_common = type { i32, i32, i32, i32, %struct.ath9k_htc_priv*, i32, %struct.ath_hw*, i32*, i32*, %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AH_USE_EEPROM = common dso_local global i32 0, align 4
@ath9k_regread = common dso_local global i32 0, align 4
@ath9k_multi_regread = common dso_local global i32 0, align 4
@ath9k_regwrite = common dso_local global i32 0, align 4
@ath9k_enable_regwrite_buffer = common dso_local global i32 0, align 4
@ath9k_regwrite_flush = common dso_local global i32 0, align 4
@ath9k_enable_rmw_buffer = common dso_local global i32 0, align 4
@ath9k_reg_rmw_flush = common dso_local global i32 0, align 4
@ath9k_reg_rmw = common dso_local global i32 0, align 4
@ath9k_htc_ps_ops = common dso_local global i32 0, align 4
@ath9k_usb_bus_ops = common dso_local global i32 0, align 4
@ath9k_debug = common dso_local global i32 0, align 4
@ath9k_htc_btcoex_enable = common dso_local global i32 0, align 4
@ATH_OP_INVALID = common dso_local global i32 0, align 4
@ath9k_rx_tasklet = common dso_local global i32 0, align 4
@ath9k_tx_failed_tasklet = common dso_local global i32 0, align 4
@ath9k_htc_ani_work = common dso_local global i32 0, align 4
@ath9k_ps_work = common dso_local global i32 0, align 4
@ath9k_fatal_work = common dso_local global i32 0, align 4
@ath9k_htc_tx_cleanup_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Unable to initialize hardware; initialization status: %d\0A\00", align 1
@ATH9K_HTC_MAX_BCN_VIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, i32, i8*, i32)* @ath9k_init_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_priv(%struct.ath9k_htc_priv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath9k_htc_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ath_hw* null, %struct.ath_hw** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ath_hw* @kzalloc(i32 52, i32 %15)
  store %struct.ath_hw* %16, %struct.ath_hw** %10, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %18 = icmp ne %struct.ath_hw* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %214

22:                                               ; preds = %4
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @AH_USE_EEPROM, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @ath9k_regread, align 4
  %47 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @ath9k_multi_regread, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ath9k_regwrite, align 4
  %55 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %56 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ath9k_enable_regwrite_buffer, align 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @ath9k_regwrite_flush, align 4
  %63 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @ath9k_enable_rmw_buffer, align 4
  %67 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @ath9k_reg_rmw_flush, align 4
  %71 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @ath9k_reg_rmw, align 4
  %75 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %79 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %80 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %79, i32 0, i32 0
  store %struct.ath_hw* %78, %struct.ath_hw** %80, align 8
  %81 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %82 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %81)
  store %struct.ath_common* %82, %struct.ath_common** %11, align 8
  %83 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %84 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %83, i32 0, i32 0
  %85 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %86 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %85, i32 0, i32 9
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %86, align 8
  %87 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %88 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %87, i32 0, i32 8
  store i32* @ath9k_htc_ps_ops, i32** %88, align 8
  %89 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %90 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %89, i32 0, i32 7
  store i32* @ath9k_usb_bus_ops, i32** %90, align 8
  %91 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %92 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %93 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %92, i32 0, i32 6
  store %struct.ath_hw* %91, %struct.ath_hw** %93, align 8
  %94 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %95 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %98 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %100 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %101 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %100, i32 0, i32 4
  store %struct.ath9k_htc_priv* %99, %struct.ath9k_htc_priv** %101, align 8
  %102 = load i32, i32* @ath9k_debug, align 4
  %103 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %104 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @ath9k_htc_btcoex_enable, align 4
  %106 = icmp eq i32 %105, 1
  %107 = zext i1 %106 to i32
  %108 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %109 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @ATH_OP_INVALID, align 4
  %111 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %112 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %111, i32 0, i32 2
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  %114 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %115 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %114, i32 0, i32 10
  %116 = call i32 @spin_lock_init(i32* %115)
  %117 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %118 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = call i32 @spin_lock_init(i32* %119)
  %121 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %122 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %121, i32 0, i32 9
  %123 = call i32 @mutex_init(i32* %122)
  %124 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %125 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %124, i32 0, i32 8
  %126 = call i32 @mutex_init(i32* %125)
  %127 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %128 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %127, i32 0, i32 7
  %129 = load i32, i32* @ath9k_rx_tasklet, align 4
  %130 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %131 = ptrtoint %struct.ath9k_htc_priv* %130 to i64
  %132 = call i32 @tasklet_init(i32* %128, i32 %129, i64 %131)
  %133 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %134 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %133, i32 0, i32 6
  %135 = load i32, i32* @ath9k_tx_failed_tasklet, align 4
  %136 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %137 = ptrtoint %struct.ath9k_htc_priv* %136 to i64
  %138 = call i32 @tasklet_init(i32* %134, i32 %135, i64 %137)
  %139 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %140 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %139, i32 0, i32 5
  %141 = load i32, i32* @ath9k_htc_ani_work, align 4
  %142 = call i32 @INIT_DELAYED_WORK(i32* %140, i32 %141)
  %143 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %144 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %143, i32 0, i32 4
  %145 = load i32, i32* @ath9k_ps_work, align 4
  %146 = call i32 @INIT_WORK(i32* %144, i32 %145)
  %147 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %148 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %147, i32 0, i32 3
  %149 = load i32, i32* @ath9k_fatal_work, align 4
  %150 = call i32 @INIT_WORK(i32* %148, i32 %149)
  %151 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %152 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* @ath9k_htc_tx_cleanup_timer, align 4
  %155 = call i32 @timer_setup(i32* %153, i32 %154, i32 0)
  %156 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %157 = call i32 @ath_read_cachesize(%struct.ath_common* %156, i32* %14)
  %158 = load i32, i32* %14, align 4
  %159 = shl i32 %158, 2
  %160 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %161 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %163 = call i32 @ath9k_hw_init(%struct.ath_hw* %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %22
  %167 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @ath_err(%struct.ath_common* %167, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %208

170:                                              ; preds = %22
  %171 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %172 = call i32 @ath9k_init_queues(%struct.ath9k_htc_priv* %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %205

176:                                              ; preds = %170
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %189, %176
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @ATH9K_HTC_MAX_BCN_VIF, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %183 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %177

192:                                              ; preds = %177
  %193 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %194 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32 9, i32* %195, align 8
  %196 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %197 = call i32 @ath9k_cmn_init_channels_rates(%struct.ath_common* %196)
  %198 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %199 = call i32 @ath9k_cmn_init_crypto(%struct.ath_hw* %198)
  %200 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %201 = call i32 @ath9k_init_misc(%struct.ath9k_htc_priv* %200)
  %202 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = call i32 @ath9k_htc_init_btcoex(%struct.ath9k_htc_priv* %202, i8* %203)
  store i32 0, i32* %5, align 4
  br label %214

205:                                              ; preds = %175
  %206 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %207 = call i32 @ath9k_hw_deinit(%struct.ath_hw* %206)
  br label %208

208:                                              ; preds = %205, %166
  %209 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %210 = call i32 @kfree(%struct.ath_hw* %209)
  %211 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %212 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %211, i32 0, i32 0
  store %struct.ath_hw* null, %struct.ath_hw** %212, align 8
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %208, %192, %19
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.ath_hw* @kzalloc(i32, i32) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ath_read_cachesize(%struct.ath_common*, i32*) #1

declare dso_local i32 @ath9k_hw_init(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath9k_init_queues(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_cmn_init_channels_rates(%struct.ath_common*) #1

declare dso_local i32 @ath9k_cmn_init_crypto(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_init_misc(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_init_btcoex(%struct.ath9k_htc_priv*, i8*) #1

declare dso_local i32 @ath9k_hw_deinit(%struct.ath_hw*) #1

declare dso_local i32 @kfree(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
