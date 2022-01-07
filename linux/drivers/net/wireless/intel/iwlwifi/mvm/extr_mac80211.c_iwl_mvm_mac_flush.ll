; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm = type { i32, i32, i32*, i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.iwl_mvm_sta = type { i32, %struct.ieee80211_vif* }
%struct.ieee80211_sta = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"flush request fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32)* @iwl_mvm_mac_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_flush(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm_sta*, align 8
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %15)
  store %struct.iwl_mvm* %16, %struct.iwl_mvm** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %18 = icmp ne %struct.ieee80211_vif* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @iwl_mvm_flush_no_vif(%struct.iwl_mvm* %20, i32 %21, i32 %22)
  br label %133

24:                                               ; preds = %4
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %133

31:                                               ; preds = %24
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 3
  %34 = call i32 @flush_work(i32* %33)
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %38)
  store %struct.iwl_mvm_vif* %39, %struct.iwl_mvm_vif** %10, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %114, %31
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %40
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %55, i32 0, i32 1
  %57 = call i32 @lockdep_is_held(i32* %56)
  %58 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %54, i32 %57)
  store %struct.ieee80211_sta* %58, %struct.ieee80211_sta** %12, align 8
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %60 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %114

63:                                               ; preds = %47
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %65 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %64)
  store %struct.iwl_mvm_sta* %65, %struct.iwl_mvm_sta** %11, align 8
  %66 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %66, i32 0, i32 1
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %67, align 8
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %70 = icmp ne %struct.ieee80211_vif* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %114

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %78, %72
  %85 = phi i1 [ false, %72 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %92 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %93 = call i64 @iwl_mvm_flush_sta(%struct.iwl_mvm* %91, %struct.iwl_mvm_sta* %92, i32 0, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %97 = call i32 @IWL_ERR(%struct.iwl_mvm* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  br label %113

99:                                               ; preds = %84
  %100 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %14, align 4
  %105 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %106 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %110 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %111 = call i32 @iwl_mvm_wait_sta_queues_empty(%struct.iwl_mvm* %109, %struct.iwl_mvm_sta* %110)
  br label %112

112:                                              ; preds = %108, %99
  br label %113

113:                                              ; preds = %112, %98
  br label %114

114:                                              ; preds = %113, %71, %62
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %40

117:                                              ; preds = %40
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %117
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %125 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @iwl_trans_wait_tx_queues_empty(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %19, %30, %127, %123, %117
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @iwl_mvm_flush_no_vif(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @iwl_mvm_flush_sta(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_wait_sta_queues_empty(%struct.iwl_mvm*, %struct.iwl_mvm_sta*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_trans_wait_tx_queues_empty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
