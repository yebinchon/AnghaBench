; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_is_ssid_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_is_ssid_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_ssid = type { i64, i32 }
%struct.cfg80211_sched_scan_request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_ssid*, %struct.cfg80211_sched_scan_request*)* @brcmf_is_ssid_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_is_ssid_active(%struct.cfg80211_ssid* %0, %struct.cfg80211_sched_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_ssid*, align 8
  %5 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %6 = alloca i32, align 4
  store %struct.cfg80211_ssid* %0, %struct.cfg80211_ssid** %4, align 8
  store %struct.cfg80211_sched_scan_request* %1, %struct.cfg80211_sched_scan_request** %5, align 8
  %7 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %8 = icmp ne %struct.cfg80211_ssid* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %11 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %16 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %9, %2
  store i32 0, i32* %3, align 4
  br label %64

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %24 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %32 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %30, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %27
  %41 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %42 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %45 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %53 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strncmp(i32 %43, i32 %51, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %64

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %27
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %21

63:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %57, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @strncmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
