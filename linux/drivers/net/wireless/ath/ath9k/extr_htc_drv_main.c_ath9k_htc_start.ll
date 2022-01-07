; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_4__, %struct.ath9k_htc_priv* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath9k_htc_priv = type { i32, %struct.TYPE_5__, i32, i32, i32, %struct.ath_hw* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_channel = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Starting driver with initial channel: %d MHz\0A\00", align 1
@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@WMI_FLUSH_RECV_CMDID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to reset hardware; reset status %d (freq %u MHz)\0A\00", align 1
@WMI_SET_MODE_CMDID = common dso_local global i32 0, align 4
@WMI_ATH_INIT_CMDID = common dso_local global i32 0, align 4
@WMI_START_RECV_CMDID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to update capability in target\0A\00", align 1
@ATH_OP_INVALID = common dso_local global i32 0, align 4
@ATH9K_HTC_OP_TX_QUEUES_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH9K_HTC_TX_CLEANUP_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath9k_htc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %14, align 8
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %4, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 5
  %18 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  store %struct.ath_hw* %18, %struct.ath_hw** %5, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %19)
  store %struct.ath_common* %20, %struct.ath_common** %6, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %24, align 8
  store %struct.ieee80211_channel* %25, %struct.ieee80211_channel** %7, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %30 = load i32, i32* @CONFIG, align 4
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %29, i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %36 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %37 = call i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv* %35, i32 %36)
  %38 = load i32, i32* @WMI_FLUSH_RECV_CMDID, align 4
  %39 = call i32 @WMI_CMD(i32 %38)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call %struct.ath9k_channel* @ath9k_cmn_get_channel(%struct.ieee80211_hw* %40, %struct.ath_hw* %41, %struct.TYPE_6__* %44)
  store %struct.ath9k_channel* %45, %struct.ath9k_channel** %8, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %47 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %48 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ath9k_hw_reset(%struct.ath_hw* %46, %struct.ath9k_channel* %47, i32 %50, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %1
  %55 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ath_err(%struct.ath_common* %55, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %62 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  br label %137

65:                                               ; preds = %1
  %66 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %71 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %74 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %73, i32 0, i32 3
  %75 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %66, i32 %69, i32 %72, i32* %74)
  %76 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %77 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %78 = call i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv* %76, %struct.ath9k_channel* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @cpu_to_be16(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @WMI_SET_MODE_CMDID, align 4
  %82 = call i32 @WMI_CMD_BUF(i32 %81, i32* %11)
  %83 = load i32, i32* @WMI_ATH_INIT_CMDID, align 4
  %84 = call i32 @WMI_CMD(i32 %83)
  %85 = load i32, i32* @WMI_START_RECV_CMDID, align 4
  %86 = call i32 @WMI_CMD(i32 %85)
  %87 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %88 = call i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv* %87)
  %89 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %90 = call i32 @ath9k_htc_update_cap_target(%struct.ath9k_htc_priv* %89, i32 0)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %65
  %94 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %95 = load i32, i32* @CONFIG, align 4
  %96 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %94, i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %65
  %98 = load i32, i32* @ATH_OP_INVALID, align 4
  %99 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %100 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %99, i32 0, i32 0
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %103 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @htc_start(i32 %104)
  %106 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %107 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load i32, i32* @ATH9K_HTC_OP_TX_QUEUES_STOP, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %113 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %118 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock_bh(i32* %119)
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %122 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %121)
  %123 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %124 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* @jiffies, align 8
  %127 = load i32, i32* @ATH9K_HTC_TX_CLEANUP_INTERVAL, align 4
  %128 = call i64 @msecs_to_jiffies(i32 %127)
  %129 = add nsw i64 %126, %128
  %130 = call i32 @mod_timer(i32* %125, i64 %129)
  %131 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %132 = call i32 @ath9k_htc_start_btcoex(%struct.ath9k_htc_priv* %131)
  %133 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %134 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %97, %54
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local %struct.ath9k_channel* @ath9k_cmn_get_channel(%struct.ieee80211_hw*, %struct.ath_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv*, %struct.ath9k_channel*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

declare dso_local i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_update_cap_target(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @htc_start(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath9k_htc_start_btcoex(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
