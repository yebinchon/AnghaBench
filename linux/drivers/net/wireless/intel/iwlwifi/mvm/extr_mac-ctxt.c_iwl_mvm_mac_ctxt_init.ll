; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.iwl_mvm_vif = type { i64, i64, i32*, i8*, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_mvm_mac_iface_iterator_data = type { i64, i32, i32, i32, %struct.ieee80211_vif*, %struct.iwl_mvm* }

@NUM_TSF_IDS = common dso_local global i64 0, align 8
@NUM_MAC_INDEX_DRIVER = common dso_local global i64 0, align 8
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@iwl_mvm_mac_iface_iterator = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to init MAC context - no free ID!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to init MAC context - no free TSF!\0A\00", align 1
@TE_MAX = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@IWL_MVM_DQA_GCAST_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i8* null, align 8
@NUM_IWL_MVM_SMPS_REQ = common dso_local global i32 0, align 4
@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_mac_ctxt_init(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_mvm_mac_iface_iterator_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 0
  %13 = load i64, i64* @NUM_TSF_IDS, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 2
  %16 = load i64, i64* @NUM_TSF_IDS, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 3
  %21 = load i64, i64* @NUM_MAC_INDEX_DRIVER, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %20, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_vif* %26, %struct.ieee80211_vif** %25, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 5
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm* %28, %struct.iwl_mvm** %27, align 8
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 2
  %31 = call i32 @lockdep_assert_held(i32* %30)
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %43 [
    i32 129, label %35
    i32 128, label %36
  ]

35:                                               ; preds = %2
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %2, %42
  %44 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @__clear_bit(i32 0, i32 %45)
  br label %47

47:                                               ; preds = %43, %41, %35
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %52 = load i32, i32* @iwl_mvm_mac_iface_iterator, align 4
  %53 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %50, i32 %51, i32 %52, %struct.iwl_mvm_mac_iface_iterator_data* %7)
  %54 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %179

58:                                               ; preds = %47
  %59 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 0
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = call i64 @WARN_ON_ONCE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %179

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* @NUM_MAC_INDEX_DRIVER, align 8
  %72 = call i8* @find_first_bit(i32 %70, i64 %71)
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NUM_MAC_INDEX_DRIVER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %83 = call i32 @IWL_ERR(%struct.iwl_mvm* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %175

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NUM_TSF_IDS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %104

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %7, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* @NUM_TSF_IDS, align 8
  %100 = call i8* @find_first_bit(i32 %98, i64 %99)
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %96, %91
  %105 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %106 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NUM_TSF_IDS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %112 = call i32 @IWL_ERR(%struct.iwl_mvm* %111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %175

115:                                              ; preds = %104
  %116 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %117 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %116, i32 0, i32 8
  store i64 0, i64* %117, align 8
  %118 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load i32, i32* @TE_MAX, align 4
  %123 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %127 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %179

132:                                              ; preds = %115
  %133 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %134 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %132
  %139 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %140 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 129
  br i1 %142, label %143, label %147

143:                                              ; preds = %138, %132
  %144 = load i32, i32* @IWL_MVM_DQA_GCAST_QUEUE, align 4
  %145 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %146 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i8*, i8** @IWL_MVM_INVALID_STA, align 8
  %149 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load i8*, i8** @IWL_MVM_INVALID_STA, align 8
  %153 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %154 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load i8*, i8** @IWL_MVM_INVALID_STA, align 8
  %157 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %158 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %171, %147
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @NUM_IWL_MVM_SMPS_REQ, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  %165 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %166 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  br label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %159

174:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %179

175:                                              ; preds = %110, %81
  %176 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %177 = call i32 @memset(%struct.iwl_mvm_vif* %176, i32 0, i32 72)
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %175, %174, %131, %65, %57
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm_mac_iface_iterator_data*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i8* @find_first_bit(i32, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(%struct.iwl_mvm_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
