; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_mac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i64*, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_HW_RESTART_REQUESTED = common dso_local global i32 0, align 4
@iwl_mvm_cleanup_iterator = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"UMAC scan UID %d status was not cleaned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__iwl_mvm_mac_stop(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %4, i32 0, i32 7
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 6
  %9 = call i32 @memset(i32* %8, i32 0, i32 4)
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 5
  %12 = call i32 @flush_work(i32* %11)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %14 = call i32 @iwl_mvm_stop_device(%struct.iwl_mvm* %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %16 = call i32 @iwl_mvm_async_handlers_purge(%struct.iwl_mvm* %15)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %18 = call i32 @iwl_mvm_del_aux_sta(%struct.iwl_mvm* %17)
  %19 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 4
  %22 = call i64 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 4
  %28 = call i64 @test_and_clear_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24, %1
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @iwl_mvm_cleanup_iterator, align 4
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %36 = call i32 @ieee80211_iterate_interfaces(i32 %33, i32 0, i32 %34, %struct.iwl_mvm* %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* @IWL_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %43 = call i64 @fw_has_capa(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @WARN_ONCE(i64 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %52
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %46

74:                                               ; preds = %46
  br label %75

75:                                               ; preds = %74, %37
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @iwl_mvm_stop_device(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_async_handlers_purge(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_del_aux_sta(%struct.iwl_mvm*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_iterate_interfaces(i32, i32, i32, %struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i64 @WARN_ONCE(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
