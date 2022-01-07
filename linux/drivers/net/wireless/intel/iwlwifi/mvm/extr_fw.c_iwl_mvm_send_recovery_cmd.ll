; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_send_recovery_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_send_recovery_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_fw_error_recovery_cmd = type { i32, i32 }
%struct.iwl_host_cmd = type { i32*, %struct.TYPE_6__*, i32*, i32**, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@SYSTEM_GROUP = common dso_local global i32 0, align 4
@FW_ERROR_RECOVERY_CMD = common dso_local global i32 0, align 4
@ERROR_RECOVERY_UPDATE_DB = common dso_local global i32 0, align 4
@IWL_HCMD_DFL_NOCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to send recovery cmd %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to send recovery cmd blob was invalid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_send_recovery_cmd(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_fw_error_recovery_cmd, align 4
  %9 = alloca %struct.iwl_host_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds %struct.iwl_fw_error_recovery_cmd, %struct.iwl_fw_error_recovery_cmd* %8, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.iwl_fw_error_recovery_cmd, %struct.iwl_fw_error_recovery_cmd* %8, i32 0, i32 1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 0
  store i32* inttoptr (i64 8 to i32*), i32** %20, align 8
  %21 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %21, align 8
  %22 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 3
  %24 = bitcast %struct.iwl_fw_error_recovery_cmd* %8 to i32**
  store i32** %24, i32*** %23, align 8
  %25 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 4
  %26 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 5
  %28 = load i32, i32* @SYSTEM_GROUP, align 4
  %29 = load i32, i32* @FW_ERROR_RECOVERY_CMD, align 4
  %30 = call i32 @WIDE_ID(i32 %28, i32 %29)
  store i32 %30, i32* %27, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %98

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ERROR_RECOVERY_UPDATE_DB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %98

45:                                               ; preds = %39
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 3
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  store i32* %48, i32** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @IWL_HCMD_DFL_NOCOPY, align 4
  %57 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = getelementptr inbounds %struct.iwl_fw_error_recovery_cmd, %struct.iwl_fw_error_recovery_cmd* %8, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %45, %34
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %65 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %64, %struct.iwl_host_cmd* %9)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @IWL_ERR(%struct.iwl_mvm* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %98

78:                                               ; preds = %63
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @ERROR_RECOVERY_UPDATE_DB, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @IWL_ERR(%struct.iwl_mvm* %94, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %83
  br label %98

98:                                               ; preds = %33, %44, %74, %97, %78
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
