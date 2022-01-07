; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_aes_rx_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_aes_rx_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.aes_sc = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i64 }
%struct.iwl_mvm_sta = type { i32* }
%struct.iwl_mvm_key_pn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.ieee80211_key_seq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IWL_NUM_RSC = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IEEE80211_CCMP_PN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.aes_sc*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @iwl_mvm_set_aes_rx_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_aes_rx_seq(%struct.iwl_mvm* %0, %struct.aes_sc* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.aes_sc*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.iwl_mvm_key_pn*, align 8
  %12 = alloca %struct.ieee80211_key_seq, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_key_seq, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.aes_sc* %1, %struct.aes_sc** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %8, align 8
  %15 = load i32, i32* @IWL_NUM_RSC, align 4
  %16 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %21 = icmp ne %struct.ieee80211_sta* %20, null
  br i1 %21, label %22, label %97

22:                                               ; preds = %4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = call i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %22
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %28 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %27)
  store %struct.iwl_mvm_sta* %28, %struct.iwl_mvm_sta** %10, align 8
  %29 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 1
  %39 = call i32 @lockdep_is_held(i32* %38)
  %40 = call %struct.iwl_mvm_key_pn* @rcu_dereference_protected(i32 %36, i32 %39)
  store %struct.iwl_mvm_key_pn* %40, %struct.iwl_mvm_key_pn** %11, align 8
  %41 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %11, align 8
  %42 = icmp ne %struct.iwl_mvm_key_pn* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %116

48:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %93, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  %54 = bitcast %struct.ieee80211_key_seq* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 4, i1 false)
  %55 = load %struct.aes_sc*, %struct.aes_sc** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.aes_sc, %struct.aes_sc* %55, i64 %57
  %59 = call i32 @iwl_mvm_aes_sc_to_seq(%struct.aes_sc* %58, %struct.ieee80211_key_seq* %12)
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ieee80211_set_key_rx_seq(%struct.ieee80211_key_conf* %60, i32 %61, %struct.ieee80211_key_seq* %12)
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %89, %53
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %63
  %72 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %11, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_key_pn, %struct.iwl_mvm_key_pn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %12, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %88 = call i32 @memcpy(i32 %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %63

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %49

96:                                               ; preds = %49
  br label %116

97:                                               ; preds = %22, %4
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %112, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @IWL_NUM_RSC, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = bitcast %struct.ieee80211_key_seq* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %103, i8 0, i64 4, i1 false)
  %104 = load %struct.aes_sc*, %struct.aes_sc** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.aes_sc, %struct.aes_sc* %104, i64 %106
  %108 = call i32 @iwl_mvm_aes_sc_to_seq(%struct.aes_sc* %107, %struct.ieee80211_key_seq* %14)
  %109 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @ieee80211_set_key_rx_seq(%struct.ieee80211_key_conf* %109, i32 %110, %struct.ieee80211_key_seq* %14)
  br label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %98

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %47, %115, %96
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_key_pn* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @iwl_mvm_aes_sc_to_seq(%struct.aes_sc*, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @ieee80211_set_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
