; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_scan_specific_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_scan_specific_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64 }
%struct.cfg80211_ssid = type { i32 }
%struct.mwifiex_user_scan_cfg = type { i32, %struct.cfg80211_ssid* }

@WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cmd: Scan already in process...\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cmd: Scan is blocked during association...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cfg80211_ssid*)* @mwifiex_scan_specific_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_scan_specific_ssid(%struct.mwifiex_private* %0, %struct.cfg80211_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.cfg80211_ssid*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_user_scan_cfg*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.cfg80211_ssid* %1, %struct.cfg80211_ssid** %5, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 1
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %6, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %18 = load i32, i32* @WARN, align 4
  %19 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %17, i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %29 = load i32, i32* @WARN, align 4
  %30 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %28, i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %22
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.mwifiex_user_scan_cfg* @kzalloc(i32 16, i32 %34)
  store %struct.mwifiex_user_scan_cfg* %35, %struct.mwifiex_user_scan_cfg** %8, align 8
  %36 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %8, align 8
  %37 = icmp ne %struct.mwifiex_user_scan_cfg* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %43 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %8, align 8
  %44 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %43, i32 0, i32 1
  store %struct.cfg80211_ssid* %42, %struct.cfg80211_ssid** %44, align 8
  %45 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %8, align 8
  %46 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %48 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %8, align 8
  %49 = call i32 @mwifiex_scan_networks(%struct.mwifiex_private* %47, %struct.mwifiex_user_scan_cfg* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %8, align 8
  %51 = call i32 @kfree(%struct.mwifiex_user_scan_cfg* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %38, %27, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local %struct.mwifiex_user_scan_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_scan_networks(%struct.mwifiex_private*, %struct.mwifiex_user_scan_cfg*) #1

declare dso_local i32 @kfree(%struct.mwifiex_user_scan_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
