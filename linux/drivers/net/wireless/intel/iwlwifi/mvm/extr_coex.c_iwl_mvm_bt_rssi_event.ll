; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_rssi_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_rssi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_mvm_vif = type { i64 }

@BT_FORCE_ANT_DIS = common dso_local global i64 0, align 8
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@BT_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"RSSI for %pM is now %s\0A\00", align 1
@RSSI_EVENT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HIGH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@RSSI_EVENT_LOW = common dso_local global i32 0, align 4
@BT_COEX_LOOSE_LUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"couldn't send BT_CONFIG HCMD upon RSSI event\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_bt_rssi_event(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %7, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 3
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BT_FORCE_ANT_DIS, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %85

23:                                               ; preds = %3
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %85

30:                                               ; preds = %23
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @le32_to_cpu(i32 %34)
  %36 = load i64, i64* @BT_OFF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %85

39:                                               ; preds = %30
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @RSSI_EVENT_HIGH, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @IWL_DEBUG_COEX(%struct.iwl_mvm* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RSSI_EVENT_LOW, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %67, label %54

54:                                               ; preds = %39
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %64 = call i64 @iwl_get_coex_type(%struct.iwl_mvm* %62, %struct.ieee80211_vif* %63)
  %65 = load i64, i64* @BT_COEX_LOOSE_LUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %54, %39
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %69 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %68, i64 %71, i32 0)
  store i32 %72, i32* %8, align 4
  br label %79

73:                                               ; preds = %61
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %75 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %74, i64 %77, i32 1)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %84 = call i32 @IWL_ERR(%struct.iwl_mvm* %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %22, %29, %38, %82, %79
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, i32, i8*) #1

declare dso_local i64 @iwl_get_coex_type(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm*, i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
