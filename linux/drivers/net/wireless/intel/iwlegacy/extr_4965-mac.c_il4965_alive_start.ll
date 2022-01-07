; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alive_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alive_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.il_priv*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.il_rxon_cmd = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Runtime Alive received.\0A\00", align 1
@UCODE_VALID_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Alive failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Bad runtime uCode load.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Could not complete ALIVE transition [ntf]: %d\0A\00", align 1
@S_ALIVE = common dso_local global i32 0, align 4
@RATES_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Updated power mode\0A\00", align 1
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@S_READY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"ALIVE processing complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_alive_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_alive_start(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @D_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UCODE_VALID_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @D_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %104

14:                                               ; preds = %1
  %15 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %16 = call i64 @il4965_verify_ucode(%struct.il_priv* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @D_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %104

20:                                               ; preds = %14
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = call i32 @il4965_alive_notify(%struct.il_priv* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @IL_WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  br label %104

28:                                               ; preds = %20
  %29 = load i32, i32* @S_ALIVE, align 4
  %30 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 3
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %34 = call i32 @il_setup_watchdog(%struct.il_priv* %33)
  %35 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %36 = call i64 @il_is_rfkill(%struct.il_priv* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %111

39:                                               ; preds = %28
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ieee80211_wake_queues(i32 %42)
  %44 = load i32, i32* @RATES_MASK, align 4
  %45 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %48 = call i32 @il_power_update_mode(%struct.il_priv* %47, i32 1)
  %49 = call i32 @D_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %51 = call i64 @il_is_associated(%struct.il_priv* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %39
  %54 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %55 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %54, i32 0, i32 6
  %56 = bitcast i32* %55 to %struct.il_rxon_cmd*
  store %struct.il_rxon_cmd* %56, %struct.il_rxon_cmd** %4, align 8
  %57 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %58 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %87

69:                                               ; preds = %39
  %70 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %71 = call i32 @il_connection_init_rx_config(%struct.il_priv* %70)
  %72 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %75, align 8
  %77 = icmp ne i32 (%struct.il_priv*)* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %80 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %82, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %85 = call i32 %83(%struct.il_priv* %84)
  br label %86

86:                                               ; preds = %78, %69
  br label %87

87:                                               ; preds = %86, %53
  %88 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %89 = call i32 @il_send_bt_config(%struct.il_priv* %88)
  %90 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %91 = call i32 @il4965_reset_run_time_calib(%struct.il_priv* %90)
  %92 = load i32, i32* @S_READY, align 4
  %93 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 3
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %97 = call i32 @il_commit_rxon(%struct.il_priv* %96)
  %98 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %99 = call i32 @il4965_rf_kill_ct_config(%struct.il_priv* %98)
  %100 = call i32 @D_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 2
  %103 = call i32 @wake_up(i32* %102)
  br label %111

104:                                              ; preds = %25, %18, %12
  %105 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %106 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %109 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %108, i32 0, i32 0
  %110 = call i32 @queue_work(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %104, %87, %38
  ret void
}

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i64 @il4965_verify_ucode(%struct.il_priv*) #1

declare dso_local i32 @il4965_alive_notify(%struct.il_priv*) #1

declare dso_local i32 @IL_WARN(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_setup_watchdog(%struct.il_priv*) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @il_power_update_mode(%struct.il_priv*, i32) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @il_connection_init_rx_config(%struct.il_priv*) #1

declare dso_local i32 @il_send_bt_config(%struct.il_priv*) #1

declare dso_local i32 @il4965_reset_run_time_calib(%struct.il_priv*) #1

declare dso_local i32 @il_commit_rxon(%struct.il_priv*) #1

declare dso_local i32 @il4965_rf_kill_ct_config(%struct.il_priv*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
