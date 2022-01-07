; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_stop_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_stop_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"sending WMI_DISCOVERY_STOP_CMDID\0A\00", align 1
@WMI_DISCOVERY_STOP_CMDID = common dso_local global i32 0, align 4
@WMI_DISCOVERY_STOPPED_EVENTID = common dso_local global i32 0, align 4
@WIL_WMI_CALL_GENERAL_TO_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to stop discovery\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_stop_discovery(%struct.wil6210_vif* %0) #0 {
  %2 = alloca %struct.wil6210_vif*, align 8
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %2, align 8
  %5 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %6 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %5)
  store %struct.wil6210_priv* %6, %struct.wil6210_priv** %3, align 8
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %10 = load i32, i32* @WMI_DISCOVERY_STOP_CMDID, align 4
  %11 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %12 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WMI_DISCOVERY_STOPPED_EVENTID, align 4
  %15 = load i32, i32* @WIL_WMI_CALL_GENERAL_TO_MS, align 4
  %16 = call i32 @wmi_call(%struct.wil6210_priv* %9, i32 %10, i32 %13, i32* null, i32 0, i32 %14, i32* null, i32 0, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %21 = call i32 @wil_err(%struct.wil6210_priv* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wmi_call(%struct.wil6210_priv*, i32, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
