; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_new_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_new_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wmi_new_sta_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"new sta %pM, aid %d\0A\00", align 1
@WMI_NEW_STA_CMDID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to send new sta (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_new_sta(%struct.wil6210_vif* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wil6210_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_new_sta_cmd, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %11 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %10)
  store %struct.wil6210_priv* %11, %struct.wil6210_priv** %7, align 8
  %12 = getelementptr inbounds %struct.wmi_new_sta_cmd, %struct.wmi_new_sta_cmd* %9, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.wmi_new_sta_cmd, %struct.wmi_new_sta_cmd* %9, i32 0, i32 1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %17)
  %19 = getelementptr inbounds %struct.wmi_new_sta_cmd, %struct.wmi_new_sta_cmd* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ether_addr_copy(i32 %20, i32* %21)
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %24 = load i32, i32* @WMI_NEW_STA_CMDID, align 4
  %25 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %26 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wmi_send(%struct.wil6210_priv* %23, i32 %24, i32 %27, %struct.wmi_new_sta_cmd* %9, i32 8)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @wil_err(%struct.wil6210_priv* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_new_sta_cmd*, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
