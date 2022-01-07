; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_store_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_store_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pno_info = type { i64, i32, %struct.cfg80211_sched_scan_request** }
%struct.cfg80211_sched_scan_request = type { i32 }

@BRCMF_PNO_MAX_BUCKETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"pno request storage full\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"reqid=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pno_info*, %struct.cfg80211_sched_scan_request*)* @brcmf_pno_store_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_store_request(%struct.brcmf_pno_info* %0, %struct.cfg80211_sched_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_pno_info*, align 8
  %5 = alloca %struct.cfg80211_sched_scan_request*, align 8
  store %struct.brcmf_pno_info* %0, %struct.brcmf_pno_info** %4, align 8
  store %struct.cfg80211_sched_scan_request* %1, %struct.cfg80211_sched_scan_request** %5, align 8
  %6 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %4, align 8
  %7 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BRCMF_PNO_MAX_BUCKETS, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOSPC, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @SCAN, align 4
  %19 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @brcmf_dbg(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %4, align 8
  %24 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %27 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %4, align 8
  %28 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %27, i32 0, i32 2
  %29 = load %struct.cfg80211_sched_scan_request**, %struct.cfg80211_sched_scan_request*** %28, align 8
  %30 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %29, i64 %32
  store %struct.cfg80211_sched_scan_request* %26, %struct.cfg80211_sched_scan_request** %34, align 8
  %35 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %4, align 8
  %36 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %17, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
