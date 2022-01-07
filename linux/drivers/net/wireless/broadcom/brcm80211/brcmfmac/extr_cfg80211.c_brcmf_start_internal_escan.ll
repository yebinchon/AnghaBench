; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_start_internal_escan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_start_internal_escan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_scan_request = type { i32 }

@BRCMF_SCAN_STATUS_BUSY = common dso_local global i32 0, align 4
@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"aborting internal scan: map=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"start internal scan: map=%u\0A\00", align 1
@brcmf_run_escan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, i64, %struct.cfg80211_scan_request*)* @brcmf_start_internal_escan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_start_internal_escan(%struct.brcmf_if* %0, i64 %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %7, align 8
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %13, align 8
  store %struct.brcmf_cfg80211_info* %14, %struct.brcmf_cfg80211_info** %8, align 8
  %15 = load i32, i32* @BRCMF_SCAN_STATUS_BUSY, align 4
  %16 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %22 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @SCAN, align 4
  %27 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @brcmf_dbg(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %33 = call i32 @brcmf_abort_scanning(%struct.brcmf_cfg80211_info* %32)
  br label %34

34:                                               ; preds = %31, %3
  %35 = load i32, i32* @SCAN, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @brcmf_dbg(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @BRCMF_SCAN_STATUS_BUSY, align 4
  %39 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %40 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load i32, i32* @brcmf_run_escan, align 4
  %43 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %44 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %47 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %48 = call i32 @brcmf_do_escan(%struct.brcmf_if* %46, %struct.cfg80211_scan_request* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %34
  %52 = load i32, i32* @BRCMF_SCAN_STATUS_BUSY, align 4
  %53 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %54 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %53, i32 0, i32 1
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %34
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %60 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64) #1

declare dso_local i32 @brcmf_abort_scanning(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @brcmf_do_escan(%struct.brcmf_if*, %struct.cfg80211_scan_request*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
