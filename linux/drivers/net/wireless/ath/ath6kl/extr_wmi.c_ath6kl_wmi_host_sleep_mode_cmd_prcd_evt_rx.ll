; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32 }

@HOST_SLEEP_MODE_CMD_PROCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.ath6kl_vif*)* @ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx(%struct.wmi* %0, %struct.ath6kl_vif* %1) #0 {
  %3 = alloca %struct.wmi*, align 8
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca %struct.ath6kl*, align 8
  store %struct.wmi* %0, %struct.wmi** %3, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %4, align 8
  %6 = load %struct.wmi*, %struct.wmi** %3, align 8
  %7 = getelementptr inbounds %struct.wmi, %struct.wmi* %6, i32 0, i32 0
  %8 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  store %struct.ath6kl* %8, %struct.ath6kl** %5, align 8
  %9 = load i32, i32* @HOST_SLEEP_MODE_CMD_PROCESSED, align 4
  %10 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %11 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %10, i32 0, i32 0
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %14 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %13, i32 0, i32 0
  %15 = call i32 @wake_up(i32* %14)
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
