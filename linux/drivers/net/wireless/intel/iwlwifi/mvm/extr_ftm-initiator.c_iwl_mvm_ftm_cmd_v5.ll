; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_cmd_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_cmd_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.iwl_tof_range_req_cmd_v5 = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.cfg80211_pmsr_request = type { i32, i32*, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_tof_range_req_cmd_v5*, %struct.cfg80211_pmsr_request*)* @iwl_mvm_ftm_cmd_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_ftm_cmd_v5(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_tof_range_req_cmd_v5* %2, %struct.cfg80211_pmsr_request* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_tof_range_req_cmd_v5*, align 8
  %8 = alloca %struct.cfg80211_pmsr_request*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.iwl_tof_range_req_cmd_v5* %2, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  store %struct.cfg80211_pmsr_request* %3, %struct.cfg80211_pmsr_request** %8, align 8
  %10 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %11 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %16 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %21 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %26 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 25500
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %4
  %30 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %30, i32 0, i32 0
  store i32 255, i32* %31, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %34 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DIV_ROUND_UP(i32 %35, i32 100)
  %37 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %41 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %46 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %69, %39
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %56 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32 %81, i32 %85, i32 %86)
  br label %93

88:                                               ; preds = %72
  %89 = load %struct.iwl_tof_range_req_cmd_v5*, %struct.iwl_tof_range_req_cmd_v5** %7, align 8
  %90 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, %struct.iwl_tof_range_req_cmd_v5* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @eth_broadcast_addr(i32 %91)
  br label %93

93:                                               ; preds = %88, %78
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
