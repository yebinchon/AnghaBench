; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_set_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_set_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wmi_set_ssid_cmd = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WMI_SET_SSID_CMDID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_set_ssid(%struct.wil6210_vif* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wil6210_priv*, align 8
  %9 = alloca %struct.wmi_set_ssid_cmd, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %11 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %10)
  store %struct.wil6210_priv* %11, %struct.wil6210_priv** %8, align 8
  %12 = getelementptr inbounds %struct.wmi_set_ssid_cmd, %struct.wmi_set_ssid_cmd* %9, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.wmi_set_ssid_cmd, %struct.wmi_set_ssid_cmd* %9, i32 0, i32 1
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.wmi_set_ssid_cmd, %struct.wmi_set_ssid_cmd* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @memcpy(i32 %24, i8* %25, i32 %26)
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %29 = load i32, i32* @WMI_SET_SSID_CMDID, align 4
  %30 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %31 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wmi_send(%struct.wil6210_priv* %28, i32 %29, i32 %32, %struct.wmi_set_ssid_cmd* %9, i32 8)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_set_ssid_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
