; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_scan_complete_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_scan_complete_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.ath6kl_vif = type { i32 }
%struct.wmi_scan_complete_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_scan_complete_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_scan_complete_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl_vif*, align 8
  %9 = alloca %struct.wmi_scan_complete_event*, align 8
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ath6kl_vif* %3, %struct.ath6kl_vif** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.wmi_scan_complete_event*
  store %struct.wmi_scan_complete_event* %11, %struct.wmi_scan_complete_event** %9, align 8
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %13 = load %struct.wmi_scan_complete_event*, %struct.wmi_scan_complete_event** %9, align 8
  %14 = getelementptr inbounds %struct.wmi_scan_complete_event, %struct.wmi_scan_complete_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @a_sle32_to_cpu(i32 %15)
  %17 = call i32 @ath6kl_scan_complete_evt(%struct.ath6kl_vif* %12, i32 %16)
  %18 = load %struct.wmi*, %struct.wmi** %5, align 8
  %19 = getelementptr inbounds %struct.wmi, %struct.wmi* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  ret i32 0
}

declare dso_local i32 @ath6kl_scan_complete_evt(%struct.ath6kl_vif*, i32) #1

declare dso_local i32 @a_sle32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
