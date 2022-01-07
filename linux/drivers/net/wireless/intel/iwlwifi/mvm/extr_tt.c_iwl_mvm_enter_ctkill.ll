; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_enter_ctkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_enter_ctkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.iwl_mvm_tt_mgmt }
%struct.iwl_mvm_tt_mgmt = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IWL_MVM_STATUS_HW_CTKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Enter CT Kill\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_enter_ctkill(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.iwl_mvm_tt_mgmt*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 2
  store %struct.iwl_mvm_tt_mgmt* %6, %struct.iwl_mvm_tt_mgmt** %3, align 8
  %7 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @IWL_MVM_STATUS_HW_CTKILL, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %19 = call i32 @IWL_ERR(%struct.iwl_mvm* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %21 = call i32 @iwl_mvm_set_hw_ctkill_state(%struct.iwl_mvm* %20, i32 1)
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %23 = call i32 @iwl_mvm_is_tt_in_fw(%struct.iwl_mvm* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %36, i32 0, i32 2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @round_jiffies_relative(i32 %40)
  %42 = call i32 @schedule_delayed_work(i32* %37, i32 %41)
  br label %43

43:                                               ; preds = %16, %35, %30
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_set_hw_ctkill_state(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_is_tt_in_fw(%struct.iwl_mvm*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
