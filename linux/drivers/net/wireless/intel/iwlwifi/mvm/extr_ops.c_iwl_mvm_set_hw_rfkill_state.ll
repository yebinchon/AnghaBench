; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_set_hw_rfkill_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_set_hw_rfkill_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_mvm = type { i32, i32, i32 }

@IWL_MVM_STATUS_HW_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_op_mode*, i32)* @iwl_mvm_set_hw_rfkill_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_set_hw_rfkill_state(%struct.iwl_op_mode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_op_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %4, align 8
  %10 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %9)
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %6, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @READ_ONCE(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %16 = call i32 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @IWL_MVM_STATUS_HW_RFKILL, align 4
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 1
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @IWL_MVM_STATUS_HW_RFKILL, align 4
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 1
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %31 = call i32 @iwl_mvm_set_rfkill_state(%struct.iwl_mvm* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 0
  %37 = call i32 @iwl_abort_notification_waits(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_set_rfkill_state(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_abort_notification_waits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
