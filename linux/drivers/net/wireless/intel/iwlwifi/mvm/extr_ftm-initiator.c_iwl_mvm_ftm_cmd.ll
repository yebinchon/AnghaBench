; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iwl_tof_range_req_cmd = type { i32, i8*, i32, i32*, i32, i8*, i32, i8* }
%struct.cfg80211_pmsr_request = type { i32, i32, %struct.TYPE_4__*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_mvm_vif = type { i32 }

@IWL_TOF_INITIATOR_FLAGS_MACADDR_RANDOM = common dso_local global i32 0, align 4
@IWL_TOF_INITIATOR_FLAGS_NON_ASAP_SUPPORT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_tof_range_req_cmd*, %struct.cfg80211_pmsr_request*)* @iwl_mvm_ftm_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_ftm_cmd(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_tof_range_req_cmd* %2, %struct.cfg80211_pmsr_request* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_tof_range_req_cmd*, align 8
  %8 = alloca %struct.cfg80211_pmsr_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.iwl_tof_range_req_cmd* %2, %struct.iwl_tof_range_req_cmd** %7, align 8
  store %struct.cfg80211_pmsr_request* %3, %struct.cfg80211_pmsr_request** %8, align 8
  %11 = load i32, i32* @IWL_TOF_INITIATOR_FLAGS_MACADDR_RANDOM, align 4
  %12 = load i32, i32* @IWL_TOF_INITIATOR_FLAGS_NON_ASAP_SUPPORT, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %18 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %23 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %28 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %33 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  br label %42

38:                                               ; preds = %4
  %39 = call i8* @cpu_to_le32(i32 1048575)
  %40 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %47 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %45, i32 %48, i32 %49)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %70, %42
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %57 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %51

73:                                               ; preds = %51
  %74 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %73
  %80 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @memcpy(i32 %82, i32 %86, i32 %87)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %115, %79
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %92 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %89
  %96 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %8, align 8
  %97 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %95
  %106 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %107 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %106)
  store %struct.iwl_mvm_vif* %107, %struct.iwl_mvm_vif** %10, align 8
  %108 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %128

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %89

118:                                              ; preds = %89
  br label %124

119:                                              ; preds = %73
  %120 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @eth_broadcast_addr(i32 %122)
  br label %124

124:                                              ; preds = %119, %118
  %125 = call i8* @cpu_to_le32(i32 255)
  %126 = load %struct.iwl_tof_range_req_cmd*, %struct.iwl_tof_range_req_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.iwl_tof_range_req_cmd, %struct.iwl_tof_range_req_cmd* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %105
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
