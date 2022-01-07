; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_int_sta_modify_disable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_int_sta_modify_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_mvm_int_sta = type { i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i32, i32, i32, i32 }

@STA_FLG_DISABLE_TX = common dso_local global i32 0, align 4
@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to send ADD_STA command (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_vif*, %struct.iwl_mvm_int_sta*, i32)* @iwl_mvm_int_sta_modify_disable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_int_sta_modify_disable_tx(%struct.iwl_mvm* %0, %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_int_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_mvm_int_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_add_sta_cmd, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_vif** %6, align 8
  store %struct.iwl_mvm_int_sta* %2, %struct.iwl_mvm_int_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @FW_CMD_ID_AND_COLOR(i32 %14, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 0
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @cpu_to_le32(i32 %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 1
  %23 = load i32, i32* @STA_FLG_DISABLE_TX, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @STA_FLG_DISABLE_TX, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  store i32 %33, i32* %25, align 4
  %34 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 3
  %35 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 4
  %39 = load i32, i32* @STA_MODE_MODIFY, align 4
  store i32 %39, i32* %38, align 4
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = load i32, i32* @ADD_STA, align 4
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %43 = call i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm* %42)
  %44 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %40, i32 %41, i32 0, i32 %43, %struct.iwl_mvm_add_sta_cmd* %10)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @IWL_ERR(%struct.iwl_mvm* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %32
  ret void
}

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mvm_add_sta_cmd*) #1

declare dso_local i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
