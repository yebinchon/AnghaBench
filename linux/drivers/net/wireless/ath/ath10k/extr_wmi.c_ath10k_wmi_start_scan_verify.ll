; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_start_scan_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_start_scan_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_start_scan_arg = type { i64, i64, i64, i64, i32 }

@WLAN_SCAN_PARAMS_MAX_IE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLAN_SCAN_PARAMS_MAX_SSID = common dso_local global i64 0, align 8
@WLAN_SCAN_PARAMS_MAX_BSSID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_start_scan_verify(%struct.wmi_start_scan_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wmi_start_scan_arg*, align 8
  store %struct.wmi_start_scan_arg* %0, %struct.wmi_start_scan_arg** %3, align 8
  %4 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %3, align 8
  %5 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WLAN_SCAN_PARAMS_MAX_IE_LEN, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %3, align 8
  %14 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %3, align 8
  %17 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ARRAY_SIZE(i32 %18)
  %20 = icmp sgt i64 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %12
  %25 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %3, align 8
  %26 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WLAN_SCAN_PARAMS_MAX_SSID, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %3, align 8
  %35 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WLAN_SCAN_PARAMS_MAX_BSSID, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %30, %21, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
