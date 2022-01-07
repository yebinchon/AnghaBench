; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_is_dup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_is_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i64, i32, i32 }
%struct.iwl_rx_mpdu_desc = type { i64, i32 }
%struct.iwl_mvm_sta = type { %struct.iwl_mvm_rxq_dup_data* }
%struct.iwl_mvm_rxq_dup_data = type { i64*, i64* }

@RX_FLAG_DUP_VALIDATED = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK = common dso_local global i64 0, align 8
@IWL_RX_MPDU_MFLG2_AMSDU = common dso_local global i32 0, align 4
@RX_FLAG_ALLOW_SAME_PN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sta*, i32, %struct.ieee80211_rx_status*, %struct.ieee80211_hdr*, %struct.iwl_rx_mpdu_desc*)* @iwl_mvm_is_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_is_dup(%struct.ieee80211_sta* %0, i32 %1, %struct.ieee80211_rx_status* %2, %struct.ieee80211_hdr* %3, %struct.iwl_rx_mpdu_desc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.iwl_rx_mpdu_desc*, align 8
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca %struct.iwl_mvm_rxq_dup_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %9, align 8
  store %struct.ieee80211_hdr* %3, %struct.ieee80211_hdr** %10, align 8
  store %struct.iwl_rx_mpdu_desc* %4, %struct.iwl_rx_mpdu_desc** %11, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %17 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %16)
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %154

21:                                               ; preds = %5
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %23 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %22)
  store %struct.iwl_mvm_sta* %23, %struct.iwl_mvm_sta** %12, align 8
  %24 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %24, i32 0, i32 0
  %26 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %26, i64 %28
  store %struct.iwl_mvm_rxq_dup_data* %29, %struct.iwl_mvm_rxq_dup_data** %13, align 8
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ieee80211_is_ctl(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %21
  %36 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ieee80211_is_qos_nullfunc(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_multicast_ether_addr(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41, %35, %21
  %48 = load i32, i32* @RX_FLAG_DUP_VALIDATED, align 4
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %6, align 4
  br label %154

53:                                               ; preds = %41
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ieee80211_is_data_qos(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %61 = call i64 @ieee80211_get_tid(%struct.ieee80211_hdr* %60)
  store i64 %61, i64* %14, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %66 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK, align 8
  %69 = and i64 %67, %68
  store i64 %69, i64* %15, align 8
  %70 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ieee80211_has_retry(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %64
  %76 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %13, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %13, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp uge i64 %92, %93
  br label %95

95:                                               ; preds = %86, %75, %64
  %96 = phi i1 [ false, %75 ], [ false, %64 ], [ %94, %86 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %6, align 4
  br label %154

101:                                              ; preds = %95
  %102 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %13, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %109 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %101
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %13, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp ugt i64 %113, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %112
  %122 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %123 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IWL_RX_MPDU_MFLG2_AMSDU, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load i32, i32* @RX_FLAG_ALLOW_SAME_PN, align 4
  %130 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %121, %112, %101
  %135 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %136 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %13, align 8
  %139 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 %137, i64* %142, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %13, align 8
  %145 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64 %143, i64* %148, align 8
  %149 = load i32, i32* @RX_FLAG_DUP_VALIDATED, align 4
  %150 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %151 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %134, %100, %47, %20
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ieee80211_has_retry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
