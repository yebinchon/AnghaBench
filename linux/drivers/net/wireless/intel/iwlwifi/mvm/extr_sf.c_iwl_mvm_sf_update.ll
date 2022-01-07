; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sf.c_iwl_mvm_sf_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sf.c_iwl_mvm_sf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.iwl_mvm_active_iface_iterator_data = type { i32, i32, i32, %struct.ieee80211_vif* }

@IWL_MVM_INVALID_STA = common dso_local global i32 0, align 4
@SF_UNINIT = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_bound_iface_iterator = common dso_local global i32 0, align 4
@SF_INIT_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@SF_FULL_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_sf_update(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm_active_iface_iterator_data, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  store i32 %12, i32* %9, align 4
  store %struct.iwl_mvm_vif* null, %struct.iwl_mvm_vif** %10, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 0
  %14 = load i32, i32* @SF_UNINIT, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 2
  %17 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 3
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_vif* %19, %struct.ieee80211_vif** %18, align 8
  %20 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = icmp ne %struct.ieee80211_vif* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %3
  store i32 0, i32* %4, align 4
  br label %113

35:                                               ; preds = %28, %25
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %40 = load i32, i32* @iwl_mvm_bound_iface_iterator, align 4
  %41 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %38, i32 %39, i32 %40, %struct.iwl_mvm_active_iface_iterator_data* %11)
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %43 = icmp ne %struct.ieee80211_vif* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %47, %44, %35
  %52 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %106 [
    i32 0, label %54
    i32 1, label %56
  ]

54:                                               ; preds = %51
  %55 = load i32, i32* @SF_INIT_OFF, align 4
  store i32 %55, i32* %8, align 4
  br label %108

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %8, align 4
  %62 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %11, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  br label %105

64:                                               ; preds = %56
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %66 = icmp ne %struct.ieee80211_vif* %65, null
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %113

74:                                               ; preds = %64
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @SF_UNINIT, align 4
  store i32 %81, i32* %8, align 4
  br label %104

82:                                               ; preds = %74
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %96 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %95)
  store %struct.iwl_mvm_vif* %96, %struct.iwl_mvm_vif** %10, align 8
  %97 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @SF_FULL_ON, align 4
  store i32 %100, i32* %8, align 4
  br label %103

101:                                              ; preds = %88, %82
  %102 = load i32, i32* @SF_INIT_OFF, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %94
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104, %59
  br label %108

106:                                              ; preds = %51
  %107 = load i32, i32* @SF_UNINIT, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %106, %105, %54
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @iwl_mvm_sf_config(%struct.iwl_mvm* %109, i32 %110, i32 %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %71, %34
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm_active_iface_iterator_data*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_sf_config(%struct.iwl_mvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
