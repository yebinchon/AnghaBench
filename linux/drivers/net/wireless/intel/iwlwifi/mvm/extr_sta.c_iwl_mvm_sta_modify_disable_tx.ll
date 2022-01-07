; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_disable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i32, i32, i32, i32 }

@STA_FLG_DISABLE_TX = common dso_local global i32 0, align 4
@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to send ADD_STA command (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_sta_modify_disable_tx(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_add_sta_cmd, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %7, i32 0, i32 0
  %10 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %7, i32 0, i32 1
  %15 = load i32, i32* @STA_FLG_DISABLE_TX, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %7, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @STA_FLG_DISABLE_TX, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ]
  store i32 %25, i32* %17, align 4
  %26 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %7, i32 0, i32 3
  %27 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %7, i32 0, i32 4
  %31 = load i32, i32* @STA_MODE_MODIFY, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = load i32, i32* @ADD_STA, align 4
  %34 = load i32, i32* @CMD_ASYNC, align 4
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = call i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm* %35)
  %37 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %32, i32 %33, i32 %34, i32 %36, %struct.iwl_mvm_add_sta_cmd* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @IWL_ERR(%struct.iwl_mvm* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %24
  ret void
}

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
