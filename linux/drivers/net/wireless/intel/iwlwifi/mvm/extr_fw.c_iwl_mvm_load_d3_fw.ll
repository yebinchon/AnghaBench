; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_d3_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_d3_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32, i32, i32 }

@IWL_UCODE_WOWLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to start WoWLAN firmware: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_load_d3_fw(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 3
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iwl_trans_start_hw(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = load i32, i32* @IWL_UCODE_WOWLAN, align 4
  %20 = call i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @IWL_ERR(%struct.iwl_mvm* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %76

27:                                               ; preds = %17
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %29)
  %31 = call i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm* %28, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %76

35:                                               ; preds = %27
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @iwl_send_phy_db_data(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %76

43:                                               ; preds = %35
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = call i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %76

49:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RCU_INIT_POINTER(i32 %64, i32* null)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = call i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %80

76:                                               ; preds = %74, %48, %42, %34, %23
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %78 = call i32 @iwl_mvm_stop_device(%struct.iwl_mvm* %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %75, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_trans_start_hw(i32) #1

declare dso_local i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_send_phy_db_data(i32) #1

declare dso_local i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_stop_device(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
