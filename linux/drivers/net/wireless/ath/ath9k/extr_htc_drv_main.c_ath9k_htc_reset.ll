; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, %struct.TYPE_8__, %struct.TYPE_9__*, i32, i32, i32, %struct.ath9k_hw_cal_data, %struct.ath_hw* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@WMI_DRAIN_TXQ_ALL_CMDID = common dso_local global i32 0, align 4
@WMI_STOP_RECV_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to reset device (%u Mhz) reset status %d\0A\00", align 1
@WMI_START_RECV_CMDID = common dso_local global i32 0, align 4
@WMI_SET_MODE_CMDID = common dso_local global i32 0, align 4
@WMI_ENABLE_INTR_CMDID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH9K_HTC_TX_CLEANUP_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_reset(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ath9k_hw_cal_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %11 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %11, i32 0, i32 7
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %3, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %4, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  store %struct.ieee80211_channel* %22, %struct.ieee80211_channel** %5, align 8
  store %struct.ath9k_hw_cal_data* null, %struct.ath9k_hw_cal_data** %6, align 8
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %27 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %26)
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %29 = call i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv* %28)
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @ieee80211_stop_queues(%struct.TYPE_9__* %32)
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @del_timer_sync(i32* %36)
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %39 = call i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv* %38)
  %40 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %41 = call i32 @WMI_CMD(i32 %40)
  %42 = load i32, i32* @WMI_DRAIN_TXQ_ALL_CMDID, align 4
  %43 = call i32 @WMI_CMD(i32 %42)
  %44 = load i32, i32* @WMI_STOP_RECV_CMDID, align 4
  %45 = call i32 @WMI_CMD(i32 %44)
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %47 = call i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv* %46)
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %49 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %48, i32 0, i32 6
  store %struct.ath9k_hw_cal_data* %49, %struct.ath9k_hw_cal_data** %6, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %6, align 8
  %55 = call i32 @ath9k_hw_reset(%struct.ath_hw* %50, i32 %53, %struct.ath9k_hw_cal_data* %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %1
  %59 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ath_err(%struct.ath_common* %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %1
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %71 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %74 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %73, i32 0, i32 4
  %75 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %66, i32 %69, i32 %72, i32* %74)
  %76 = load i32, i32* @WMI_START_RECV_CMDID, align 4
  %77 = call i32 @WMI_CMD(i32 %76)
  %78 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %79 = call i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv* %78)
  %80 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv* %80, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @cpu_to_be16(i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @WMI_SET_MODE_CMDID, align 4
  %88 = call i32 @WMI_CMD_BUF(i32 %87, i32* %8)
  %89 = load i32, i32* @WMI_ENABLE_INTR_CMDID, align 4
  %90 = call i32 @WMI_CMD(i32 %89)
  %91 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %92 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @htc_start(i32 %93)
  %95 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %96 = call i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv* %95)
  %97 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %98 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = call i32 @ieee80211_wake_queues(%struct.TYPE_9__* %99)
  %101 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %102 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* @jiffies, align 8
  %105 = load i32, i32* @ATH9K_HTC_TX_CLEANUP_INTERVAL, align 4
  %106 = call i64 @msecs_to_jiffies(i32 %105)
  %107 = add nsw i64 %104, %106
  %108 = call i32 @mod_timer(i32* %103, i64 %107)
  %109 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %110 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %109)
  %111 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %112 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ieee80211_stop_queues(%struct.TYPE_9__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, i32, %struct.ath9k_hw_cal_data*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

declare dso_local i32 @htc_start(i32) #1

declare dso_local i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.TYPE_9__*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
