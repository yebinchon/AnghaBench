; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_start_sched_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_start_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32 }
%struct.brcmf_pno_info = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reqid=%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_pno_start_sched_scan(%struct.brcmf_if* %0, %struct.cfg80211_sched_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %6 = alloca %struct.brcmf_pno_info*, align 8
  %7 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.cfg80211_sched_scan_request* %1, %struct.cfg80211_sched_scan_request** %5, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %10 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %14 = call %struct.brcmf_pno_info* @ifp_to_pno(%struct.brcmf_if* %13)
  store %struct.brcmf_pno_info* %14, %struct.brcmf_pno_info** %6, align 8
  %15 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %16 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %17 = call i32 @brcmf_pno_store_request(%struct.brcmf_pno_info* %15, %struct.cfg80211_sched_scan_request* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %24 = call i32 @brcmf_pno_config_sched_scans(%struct.brcmf_if* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %29 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @brcmf_pno_remove_request(%struct.brcmf_pno_info* %28, i32 %31)
  %33 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %34 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %39 = call i32 @brcmf_pno_config_sched_scans(%struct.brcmf_if* %38)
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %40, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local %struct.brcmf_pno_info* @ifp_to_pno(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_pno_store_request(%struct.brcmf_pno_info*, %struct.cfg80211_sched_scan_request*) #1

declare dso_local i32 @brcmf_pno_config_sched_scans(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_pno_remove_request(%struct.brcmf_pno_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
