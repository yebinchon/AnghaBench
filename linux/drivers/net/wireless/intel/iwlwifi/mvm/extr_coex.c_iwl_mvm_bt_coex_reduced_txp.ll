; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_coex_reduced_txp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_coex_reduced_txp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_bt_coex_reduced_txp_update_cmd = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32 }

@BT_REDUCED_TX_POWER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%sable reduced Tx Power for sta %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@BT_COEX_UPDATE_REDUCED_TXP = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32)* @iwl_mvm_bt_coex_reduced_txp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_bt_coex_reduced_txp_update_cmd, align 4
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.iwl_bt_coex_reduced_txp_update_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm* %12, i32 %13)
  store %struct.iwl_mvm_sta* %14, %struct.iwl_mvm_sta** %9, align 8
  %15 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %16 = icmp ne %struct.iwl_mvm_sta* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @BT_REDUCED_TX_POWER_BIT, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @IWL_DEBUG_COEX(%struct.iwl_mvm* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.iwl_bt_coex_reduced_txp_update_cmd, %struct.iwl_bt_coex_reduced_txp_update_cmd* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %50 = load i32, i32* @BT_COEX_UPDATE_REDUCED_TXP, align 4
  %51 = load i32, i32* @CMD_ASYNC, align 4
  %52 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %49, i32 %50, i32 %51, i32 4, %struct.iwl_bt_coex_reduced_txp_update_cmd* %8)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %35, %24, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm*, i32) #2

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, i8*, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_bt_coex_reduced_txp_update_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
