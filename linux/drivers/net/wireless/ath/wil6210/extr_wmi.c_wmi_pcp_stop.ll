; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_pcp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_pcp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }

@WMI_PCP_STOP_CMDID = common dso_local global i32 0, align 4
@WMI_PCP_STOPPED_EVENTID = common dso_local global i32 0, align 4
@WIL_WMI_PCP_STOP_TO_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_pcp_stop(%struct.wil6210_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %3, align 8
  %6 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %7 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %6)
  store %struct.wil6210_priv* %7, %struct.wil6210_priv** %4, align 8
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %9 = call i32 @wmi_led_cfg(%struct.wil6210_priv* %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %16 = load i32, i32* @WMI_PCP_STOP_CMDID, align 4
  %17 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %18 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WMI_PCP_STOPPED_EVENTID, align 4
  %21 = load i32, i32* @WIL_WMI_PCP_STOP_TO_MS, align 4
  %22 = call i32 @wmi_call(%struct.wil6210_priv* %15, i32 %16, i32 %19, i32* null, i32 0, i32 %20, i32* null, i32 0, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @wmi_led_cfg(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wmi_call(%struct.wil6210_priv*, i32, i32, i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
