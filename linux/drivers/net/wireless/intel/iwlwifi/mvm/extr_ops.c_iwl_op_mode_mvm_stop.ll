; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_op_mode_mvm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_op_mode_mvm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_mvm = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32*, i32*, i32, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@NVM_MAX_NUM_SECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_op_mode_mvm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_op_mode_mvm_stop(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %5 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %6 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %5)
  store %struct.iwl_mvm* %6, %struct.iwl_mvm** %3, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = call i32 @iwl_mvm_leds_exit(%struct.iwl_mvm* %7)
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = call i32 @iwl_mvm_thermal_exit(%struct.iwl_mvm* %9)
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ieee80211_unregister_hw(i32 %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 10
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 9
  store i32* null, i32** %24, align 8
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 8
  store i32* null, i32** %30, align 8
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iwl_trans_op_mode_leave(i32 %33)
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @iwl_phy_db_free(i32* %37)
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %59, %1
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NVM_MAX_NUM_SECTIONS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %45

62:                                               ; preds = %45
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @cancel_delayed_work_sync(i32* %65)
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %67, i32 0, i32 2
  %69 = call i32 @iwl_fw_runtime_free(i32* %68)
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 1
  %72 = call i32 @mutex_destroy(i32* %71)
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ieee80211_free_hw(i32 %75)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @iwl_mvm_leds_exit(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_thermal_exit(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iwl_trans_op_mode_leave(i32) #1

declare dso_local i32 @iwl_phy_db_free(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @iwl_fw_runtime_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
