; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_sensitivity_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_sensitivity_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32*, %struct.iwl_sensitivity_data }
%struct.iwl_sensitivity_data = type { i32 }
%struct.iwl_sensitivity_cmd = type { i32*, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@SENSITIVITY_CMD = common dso_local global i32 0, align 4
@SENSITIVITY_CMD_CONTROL_WORK_TABLE = common dso_local global i32 0, align 4
@HD_TABLE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No change in SENSITIVITY_CMD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_sensitivity_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_sensitivity_write(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_sensitivity_cmd, align 8
  %5 = alloca %struct.iwl_sensitivity_data*, align 8
  %6 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_sensitivity_data* null, %struct.iwl_sensitivity_data** %5, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %8 = ptrtoint %struct.iwl_sensitivity_cmd* %4 to i32
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %10 = load i32, i32* @CMD_ASYNC, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store i32 16, i32* %11, align 4
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %13 = load i32, i32* @SENSITIVITY_CMD, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 1
  store %struct.iwl_sensitivity_data* %15, %struct.iwl_sensitivity_data** %5, align 8
  %16 = call i32 @memset(%struct.iwl_sensitivity_cmd* %4, i32 0, i32 16)
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %18 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_sensitivity_cmd, %struct.iwl_sensitivity_cmd* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @iwl_prepare_legacy_sensitivity_tbl(%struct.iwl_priv* %17, %struct.iwl_sensitivity_data* %18, i32* %21)
  %23 = load i32, i32* @SENSITIVITY_CMD_CONTROL_WORK_TABLE, align 4
  %24 = getelementptr inbounds %struct.iwl_sensitivity_cmd, %struct.iwl_sensitivity_cmd* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.iwl_sensitivity_cmd, %struct.iwl_sensitivity_cmd* %4, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* @HD_TABLE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcmp(i32* %27, i32* %31, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %1
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %40 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = getelementptr inbounds %struct.iwl_sensitivity_cmd, %struct.iwl_sensitivity_cmd* %4, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* @HD_TABLE_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32* %45, i32* %48, i32 %52)
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %55 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %54, %struct.iwl_host_cmd* %6)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %41, %38
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.iwl_sensitivity_cmd*, i32, i32) #1

declare dso_local i32 @iwl_prepare_legacy_sensitivity_tbl(%struct.iwl_priv*, %struct.iwl_sensitivity_data*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
