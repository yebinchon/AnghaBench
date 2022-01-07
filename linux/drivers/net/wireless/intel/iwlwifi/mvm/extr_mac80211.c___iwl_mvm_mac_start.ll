; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_mac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_mac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }

@IWL_MVM_STATUS_HW_RESTART_REQUESTED = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_FW_INI_TIME_POINT_POST_INIT = common dso_local global i32 0, align 4
@IWL_FW_INI_TIME_POINT_PERIODIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iwl_mvm_mac_start(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %4, i32 0, i32 2
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %22 = call i32 @iwl_mvm_restart_cleanup(%struct.iwl_mvm* %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %25 = call i32 @iwl_mvm_up(%struct.iwl_mvm* %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 1
  %28 = load i32, i32* @IWL_FW_INI_TIME_POINT_POST_INIT, align 4
  %29 = call i32 @iwl_dbg_tlv_time_point(i32* %27, i32 %28, i32* null)
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 1
  %32 = load i32, i32* @IWL_FW_INI_TIME_POINT_PERIODIC, align 4
  %33 = call i32 @iwl_dbg_tlv_time_point(i32* %31, i32 %32, i32* null)
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 0
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %36, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_restart_cleanup(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_up(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_dbg_tlv_time_point(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
