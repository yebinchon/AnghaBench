; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_do_escan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_do_escan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { %struct.escan_info, i32 }
%struct.escan_info = type { i64 (%struct.brcmf_cfg80211_info.0*, %struct.brcmf_if.1*, %struct.cfg80211_scan_request*)*, i64, i32, i32, %struct.brcmf_if* }
%struct.brcmf_cfg80211_info.0 = type opaque
%struct.brcmf_if.1 = type opaque
%struct.cfg80211_scan_request = type opaque
%struct.cfg80211_scan_request.2 = type { i32 }
%struct.brcmf_scan_results = type { i32, i64, i64 }

@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@WL_ESCAN_STATE_SCANNING = common dso_local global i32 0, align 4
@WL_ESCAN_RESULTS_FIXED_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_if*, %struct.cfg80211_scan_request.2*)* @brcmf_do_escan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_do_escan(%struct.brcmf_if* %0, %struct.cfg80211_scan_request.2* %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.cfg80211_scan_request.2*, align 8
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcmf_scan_results*, align 8
  %8 = alloca %struct.escan_info*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store %struct.cfg80211_scan_request.2* %1, %struct.cfg80211_scan_request.2** %4, align 8
  %9 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  store %struct.brcmf_cfg80211_info* %13, %struct.brcmf_cfg80211_info** %5, align 8
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %14, i32 0, i32 0
  store %struct.escan_info* %15, %struct.escan_info** %8, align 8
  %16 = load i32, i32* @SCAN, align 4
  %17 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %19 = load %struct.escan_info*, %struct.escan_info** %8, align 8
  %20 = getelementptr inbounds %struct.escan_info, %struct.escan_info* %19, i32 0, i32 4
  store %struct.brcmf_if* %18, %struct.brcmf_if** %20, align 8
  %21 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %22 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.escan_info*, %struct.escan_info** %8, align 8
  %25 = getelementptr inbounds %struct.escan_info, %struct.escan_info* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @WL_ESCAN_STATE_SCANNING, align 4
  %27 = load %struct.escan_info*, %struct.escan_info** %8, align 8
  %28 = getelementptr inbounds %struct.escan_info, %struct.escan_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %30 = call i32 @brcmf_scan_config_mpc(%struct.brcmf_if* %29, i32 0)
  %31 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %32 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.escan_info, %struct.escan_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.brcmf_scan_results*
  store %struct.brcmf_scan_results* %35, %struct.brcmf_scan_results** %7, align 8
  %36 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %7, align 8
  %37 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %7, align 8
  %39 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @WL_ESCAN_RESULTS_FIXED_SIZE, align 4
  %41 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %7, align 8
  %42 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.escan_info*, %struct.escan_info** %8, align 8
  %44 = getelementptr inbounds %struct.escan_info, %struct.escan_info* %43, i32 0, i32 0
  %45 = load i64 (%struct.brcmf_cfg80211_info.0*, %struct.brcmf_if.1*, %struct.cfg80211_scan_request*)*, i64 (%struct.brcmf_cfg80211_info.0*, %struct.brcmf_if.1*, %struct.cfg80211_scan_request*)** %44, align 8
  %46 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %47 = bitcast %struct.brcmf_cfg80211_info* %46 to %struct.brcmf_cfg80211_info.0*
  %48 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %49 = bitcast %struct.brcmf_if* %48 to %struct.brcmf_if.1*
  %50 = load %struct.cfg80211_scan_request.2*, %struct.cfg80211_scan_request.2** %4, align 8
  %51 = bitcast %struct.cfg80211_scan_request.2* %50 to %struct.cfg80211_scan_request*
  %52 = call i64 %45(%struct.brcmf_cfg80211_info.0* %47, %struct.brcmf_if.1* %49, %struct.cfg80211_scan_request* %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %57 = call i32 @brcmf_scan_config_mpc(%struct.brcmf_if* %56, i32 1)
  br label %58

58:                                               ; preds = %55, %2
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_scan_config_mpc(%struct.brcmf_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
