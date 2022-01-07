; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_sched_scan_request = type { i64, i32 }
%struct.brcmf_cfg80211_info = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32 }

@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Enter: n_match_sets=%d n_ssids=%d\0A\00", align 1
@BRCMF_SCAN_STATUS_SUPPRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Scanning suppressed: status=%lu\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"invalid number of matchsets specified: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_sched_scan_request*)* @brcmf_cfg80211_sched_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_sched_scan_start(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_sched_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_if*, align 8
  %10 = alloca %struct.brcmf_pub*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %11)
  store %struct.brcmf_cfg80211_info* %12, %struct.brcmf_cfg80211_info** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %13)
  store %struct.brcmf_if* %14, %struct.brcmf_if** %9, align 8
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %15, i32 0, i32 1
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %16, align 8
  store %struct.brcmf_pub* %17, %struct.brcmf_pub** %10, align 8
  %18 = load i32, i32* @SCAN, align 4
  %19 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %20 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %23 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24)
  %26 = load i32, i32* @BRCMF_SCAN_STATUS_SUPPRESS, align 4
  %27 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  %33 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bphy_err(%struct.brcmf_pub* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %3
  %40 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %41 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @SCAN, align 4
  %46 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %47 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %39
  %53 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %54 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %55 = call i32 @brcmf_pno_start_sched_scan(%struct.brcmf_if* %53, %struct.cfg80211_sched_scan_request* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %44, %31
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @brcmf_pno_start_sched_scan(%struct.brcmf_if*, %struct.cfg80211_sched_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
