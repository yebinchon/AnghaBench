; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_config_networks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_config_networks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.brcmf_pno_info = type { i32, %struct.cfg80211_sched_scan_request** }
%struct.cfg80211_sched_scan_request = type { i32, %struct.cfg80211_match_set* }
%struct.cfg80211_match_set = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_pno_info*)* @brcmf_pno_config_networks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_config_networks(%struct.brcmf_if* %0, %struct.brcmf_pno_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.brcmf_pno_info*, align 8
  %6 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %7 = alloca %struct.cfg80211_match_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.brcmf_pno_info* %1, %struct.brcmf_pno_info** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %79, %2
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %19, i32 0, i32 1
  %21 = load %struct.cfg80211_sched_scan_request**, %struct.cfg80211_sched_scan_request*** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %21, i64 %23
  %25 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %24, align 8
  store %struct.cfg80211_sched_scan_request* %25, %struct.cfg80211_sched_scan_request** %6, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %75, %18
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %33, i32 0, i32 1
  %35 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %35, i64 %37
  store %struct.cfg80211_match_set* %38, %struct.cfg80211_match_set** %7, align 8
  %39 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %7, align 8
  %40 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %7, align 8
  %46 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %45, i32 0, i32 1
  %47 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %48 = call i32 @brcmf_is_ssid_active(%struct.TYPE_3__* %46, %struct.cfg80211_sched_scan_request* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %50 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %7, align 8
  %51 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %50, i32 0, i32 1
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @brcmf_pno_add_ssid(%struct.brcmf_if* %49, %struct.TYPE_3__* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %44, %32
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %7, align 8
  %59 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @is_valid_ether_addr(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %65 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %7, align 8
  %66 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @brcmf_pno_add_bssid(%struct.brcmf_if* %64, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %57, %54
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %26

78:                                               ; preds = %26
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %12

82:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @brcmf_is_ssid_active(%struct.TYPE_3__*, %struct.cfg80211_sched_scan_request*) #1

declare dso_local i32 @brcmf_pno_add_ssid(%struct.brcmf_if*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @brcmf_pno_add_bssid(%struct.brcmf_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
