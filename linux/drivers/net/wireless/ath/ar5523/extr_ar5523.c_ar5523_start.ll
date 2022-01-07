; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar5523* }
%struct.ar5523 = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"start called\0A\00", align 1
@WDCMSG_BIND = common dso_local global i32 0, align 4
@CFG_MAC_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CFG_RATE_CONTROL_ENABLE = common dso_local global i32 0, align 4
@CFG_DIVERSITY_CTL = common dso_local global i32 0, align 4
@CFG_ABOLT = common dso_local global i32 0, align 4
@CFG_WME_ENABLED = common dso_local global i32 0, align 4
@CFG_SERVICE_TYPE = common dso_local global i32 0, align 4
@CFG_TP_SCALE = common dso_local global i32 0, align 4
@CFG_TPC_HALF_DBM5 = common dso_local global i32 0, align 4
@CFG_TPC_HALF_DBM2 = common dso_local global i32 0, align 4
@CFG_OVERRD_TX_POWER = common dso_local global i32 0, align 4
@CFG_GMODE_PROTECTION = common dso_local global i32 0, align 4
@CFG_GMODE_PROTECT_RATE_INDEX = common dso_local global i32 0, align 4
@CFG_PROTECTION_TYPE = common dso_local global i32 0, align 4
@CFG_MODE_CTS = common dso_local global i32 0, align 4
@WDCMSG_TARGET_START = common dso_local global i32 0, align 4
@AR5523_CMD_FLAG_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not start target, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WDCMSG_TARGET_START returns handle: 0x%x\0A\00", align 1
@TARGET_DEVICE_AWAKE = common dso_local global i32 0, align 4
@WDCMSG_SET_PWR_MODE = common dso_local global i32 0, align 4
@WDCMSG_RESET_KEY_CACHE = common dso_local global i32 0, align 4
@AR5523_HW_UP = common dso_local global i32 0, align 4
@UATH_FILTER_OP_INIT = common dso_local global i32 0, align 4
@UATH_FILTER_RX_UCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_MCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_BCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_BEACON = common dso_local global i32 0, align 4
@UATH_FILTER_OP_SET = common dso_local global i32 0, align 4
@UATH_LED_ACTIVITY = common dso_local global i32 0, align 4
@UATH_LED_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"start OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ar5523_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.ar5523*, %struct.ar5523** %7, align 8
  store %struct.ar5523* %8, %struct.ar5523** %3, align 8
  %9 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %10 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_dbg(%struct.ar5523* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %12 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = call i32 @cpu_to_be32(i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %16 = load i32, i32* @WDCMSG_BIND, align 4
  %17 = call i32 @ar5523_cmd_write(%struct.ar5523* %15, i32 %16, i32* %5, i32 4, i32 0)
  %18 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %19 = load i32, i32* @CFG_MAC_ADDR, align 4
  %20 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %21 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @ar5523_config_multi(%struct.ar5523* %18, i32 %19, i32* %25, i32 %26)
  %28 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %29 = load i32, i32* @CFG_RATE_CONTROL_ENABLE, align 4
  %30 = call i32 @ar5523_config(%struct.ar5523* %28, i32 %29, i32 1)
  %31 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %32 = load i32, i32* @CFG_DIVERSITY_CTL, align 4
  %33 = call i32 @ar5523_config(%struct.ar5523* %31, i32 %32, i32 1)
  %34 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %35 = load i32, i32* @CFG_ABOLT, align 4
  %36 = call i32 @ar5523_config(%struct.ar5523* %34, i32 %35, i32 63)
  %37 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %38 = load i32, i32* @CFG_WME_ENABLED, align 4
  %39 = call i32 @ar5523_config(%struct.ar5523* %37, i32 %38, i32 0)
  %40 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %41 = load i32, i32* @CFG_SERVICE_TYPE, align 4
  %42 = call i32 @ar5523_config(%struct.ar5523* %40, i32 %41, i32 1)
  %43 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %44 = load i32, i32* @CFG_TP_SCALE, align 4
  %45 = call i32 @ar5523_config(%struct.ar5523* %43, i32 %44, i32 0)
  %46 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %47 = load i32, i32* @CFG_TPC_HALF_DBM5, align 4
  %48 = call i32 @ar5523_config(%struct.ar5523* %46, i32 %47, i32 60)
  %49 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %50 = load i32, i32* @CFG_TPC_HALF_DBM2, align 4
  %51 = call i32 @ar5523_config(%struct.ar5523* %49, i32 %50, i32 60)
  %52 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %53 = load i32, i32* @CFG_OVERRD_TX_POWER, align 4
  %54 = call i32 @ar5523_config(%struct.ar5523* %52, i32 %53, i32 0)
  %55 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %56 = load i32, i32* @CFG_GMODE_PROTECTION, align 4
  %57 = call i32 @ar5523_config(%struct.ar5523* %55, i32 %56, i32 0)
  %58 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %59 = load i32, i32* @CFG_GMODE_PROTECT_RATE_INDEX, align 4
  %60 = call i32 @ar5523_config(%struct.ar5523* %58, i32 %59, i32 3)
  %61 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %62 = load i32, i32* @CFG_PROTECTION_TYPE, align 4
  %63 = call i32 @ar5523_config(%struct.ar5523* %61, i32 %62, i32 0)
  %64 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %65 = load i32, i32* @CFG_MODE_CTS, align 4
  %66 = call i32 @ar5523_config(%struct.ar5523* %64, i32 %65, i32 2)
  %67 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %68 = load i32, i32* @WDCMSG_TARGET_START, align 4
  %69 = load i32, i32* @AR5523_CMD_FLAG_MAGIC, align 4
  %70 = call i32 @ar5523_cmd_read(%struct.ar5523* %67, i32 %68, i32* null, i32 0, i32* %5, i32 4, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %1
  %74 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_dbg(%struct.ar5523* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %121

77:                                               ; preds = %1
  %78 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_dbg(%struct.ar5523* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %83 = call i32 @ar5523_switch_chan(%struct.ar5523* %82)
  %84 = load i32, i32* @TARGET_DEVICE_AWAKE, align 4
  %85 = call i32 @cpu_to_be32(i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %87 = load i32, i32* @WDCMSG_SET_PWR_MODE, align 4
  %88 = call i32 @ar5523_cmd_write(%struct.ar5523* %86, i32 %87, i32* %5, i32 4, i32 0)
  %89 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %90 = load i32, i32* @WDCMSG_RESET_KEY_CACHE, align 4
  %91 = call i32 @ar5523_cmd_write(%struct.ar5523* %89, i32 %90, i32* null, i32 0, i32 0)
  %92 = load i32, i32* @AR5523_HW_UP, align 4
  %93 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %94 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %93, i32 0, i32 3
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %97 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %100 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %99, i32 0, i32 1
  %101 = call i32 @queue_work(i32 %98, i32* %100)
  %102 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %103 = load i32, i32* @UATH_FILTER_OP_INIT, align 4
  %104 = call i32 @ar5523_set_rxfilter(%struct.ar5523* %102, i32 0, i32 %103)
  %105 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %106 = load i32, i32* @UATH_FILTER_RX_UCAST, align 4
  %107 = load i32, i32* @UATH_FILTER_RX_MCAST, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @UATH_FILTER_RX_BCAST, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @UATH_FILTER_RX_BEACON, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @UATH_FILTER_OP_SET, align 4
  %114 = call i32 @ar5523_set_rxfilter(%struct.ar5523* %105, i32 %112, i32 %113)
  %115 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %116 = load i32, i32* @UATH_LED_ACTIVITY, align 4
  %117 = load i32, i32* @UATH_LED_ON, align 4
  %118 = call i32 @ar5523_set_ledsteady(%struct.ar5523* %115, i32 %116, i32 %117)
  %119 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %120 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_dbg(%struct.ar5523* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %77, %73
  %122 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %123 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ar5523_cmd_write(%struct.ar5523*, i32, i32*, i32, i32) #1

declare dso_local i32 @ar5523_config_multi(%struct.ar5523*, i32, i32*, i32) #1

declare dso_local i32 @ar5523_config(%struct.ar5523*, i32, i32) #1

declare dso_local i32 @ar5523_cmd_read(%struct.ar5523*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ar5523_switch_chan(%struct.ar5523*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ar5523_set_rxfilter(%struct.ar5523*, i32, i32) #1

declare dso_local i32 @ar5523_set_ledsteady(%struct.ar5523*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
