; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_ctdp_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_ctdp_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm_ctdp_cmd = type { i32, i32, i32 }

@iwl_mvm_cdev_budgets = common dso_local global i64* null, align 8
@PHY_OPS_GROUP = common dso_local global i32 0, align 4
@CTDP_CONFIG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cTDP command failed (err=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cTDP avg energy in mWatt = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cTDP stopped successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_ctdp_command(%struct.iwl_mvm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_mvm_ctdp_cmd, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_ctdp_cmd, %struct.iwl_mvm_ctdp_cmd* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.iwl_mvm_ctdp_cmd, %struct.iwl_mvm_ctdp_cmd* %8, i32 0, i32 1
  %13 = load i64*, i64** @iwl_mvm_cdev_budgets, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @cpu_to_le32(i64 %16)
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds %struct.iwl_mvm_ctdp_cmd, %struct.iwl_mvm_ctdp_cmd* %8, i32 0, i32 2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @cpu_to_le32(i64 %19)
  store i32 %20, i32* %18, align 4
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 1
  %23 = call i32 @lockdep_assert_held(i32* %22)
  store i64 0, i64* %10, align 8
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %25 = load i32, i32* @PHY_OPS_GROUP, align 4
  %26 = load i32, i32* @CTDP_CONFIG_CMD, align 4
  %27 = call i32 @WIDE_ID(i32 %25, i32 %26)
  %28 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %24, i32 %27, i32 12, %struct.iwl_mvm_ctdp_cmd* %8, i64* %10)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @IWL_ERR(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %3
  %37 = load i64, i64* %6, align 8
  switch i64 %37, label %48 [
    i64 129, label %38
    i64 130, label %39
    i64 128, label %45
  ]

38:                                               ; preds = %36
  br label %48

39:                                               ; preds = %36
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TEMP(%struct.iwl_mvm* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %47 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TEMP(%struct.iwl_mvm* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %36, %45, %38
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %39, %31
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_mvm_ctdp_cmd*, i64*) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
