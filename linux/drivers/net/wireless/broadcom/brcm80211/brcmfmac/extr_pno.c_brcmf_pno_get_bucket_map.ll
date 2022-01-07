; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_get_bucket_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_get_bucket_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pno_info = type { i32, i32, %struct.cfg80211_sched_scan_request** }
%struct.cfg80211_sched_scan_request = type { i32, %struct.cfg80211_match_set* }
%struct.cfg80211_match_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.brcmf_pno_net_info_le = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_pno_get_bucket_map(%struct.brcmf_pno_info* %0, %struct.brcmf_pno_net_info_le* %1) #0 {
  %3 = alloca %struct.brcmf_pno_info*, align 8
  %4 = alloca %struct.brcmf_pno_net_info_le*, align 8
  %5 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %6 = alloca %struct.cfg80211_match_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_pno_info* %0, %struct.brcmf_pno_info** %3, align 8
  store %struct.brcmf_pno_net_info_le* %1, %struct.brcmf_pno_net_info_le** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %98, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %101

19:                                               ; preds = %13
  %20 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %20, i32 0, i32 2
  %22 = load %struct.cfg80211_sched_scan_request**, %struct.cfg80211_sched_scan_request*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %22, i64 %24
  %26 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %25, align 8
  store %struct.cfg80211_sched_scan_request* %26, %struct.cfg80211_sched_scan_request** %5, align 8
  %27 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %98

32:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %94, %32
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %36 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %33
  %40 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %5, align 8
  %41 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %40, i32 0, i32 1
  %42 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %42, i64 %44
  store %struct.cfg80211_match_set* %45, %struct.cfg80211_match_set** %6, align 8
  %46 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %6, align 8
  %47 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %4, align 8
  %51 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %39
  %55 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %6, align 8
  %56 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %4, align 8
  %60 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %4, align 8
  %63 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcmp(i32 %58, i32 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %97

72:                                               ; preds = %54, %39
  %73 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %6, align 8
  %74 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @is_valid_ether_addr(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %6, align 8
  %80 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %4, align 8
  %83 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ETH_ALEN, align 4
  %86 = call i32 @memcmp(i32 %81, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %97

93:                                               ; preds = %78, %72
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %33

97:                                               ; preds = %88, %67, %33
  br label %98

98:                                               ; preds = %97, %31
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %13

101:                                              ; preds = %13
  %102 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %103 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
