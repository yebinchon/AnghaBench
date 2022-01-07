; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32 }
%struct.ath_beacon_config = type { i32 }
%struct.ath9k_beacon_state = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@ATH9K_INT_BMISS = common dso_local global i32 0, align 4
@WMI_ENABLE_INTR_CMDID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ath_beacon_config*)* @ath9k_htc_beacon_config_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_beacon_config_sta(%struct.ath9k_htc_priv* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath9k_beacon_state, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %14 = call i32 @ath9k_cmn_beacon_config_sta(i32 %12, %struct.ath_beacon_config* %13, %struct.ath9k_beacon_state* %5)
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %21 = call i32 @WMI_CMD(i32 %20)
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ath9k_hw_set_sta_beacon_timers(i32 %24, %struct.ath9k_beacon_state* %5)
  %26 = load i32, i32* @ATH9K_INT_BMISS, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cpu_to_be32(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @WMI_ENABLE_INTR_CMDID, align 4
  %32 = call i32 @WMI_CMD_BUF(i32 %31, i32* %7)
  br label %33

33:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @ath9k_cmn_beacon_config_sta(i32, %struct.ath_beacon_config*, %struct.ath9k_beacon_state*) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @ath9k_hw_set_sta_beacon_timers(i32, %struct.ath9k_beacon_state*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
