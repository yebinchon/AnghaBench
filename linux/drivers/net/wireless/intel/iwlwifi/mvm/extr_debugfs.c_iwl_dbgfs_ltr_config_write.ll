; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_ltr_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_ltr_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_ltr_config_cmd = type { i32*, i32, i32, i32, i32 }

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%x,%x,%x,%x,%x,%x,%x\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@LTR_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to send ltr configuration cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_ltr_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_ltr_config_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_ltr_config_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = bitcast %struct.iwl_ltr_config_cmd* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %14 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @EIO, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %65

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_ltr_config_cmd, %struct.iwl_ltr_config_cmd* %11, i32 0, i32 3
  %22 = getelementptr inbounds %struct.iwl_ltr_config_cmd, %struct.iwl_ltr_config_cmd* %11, i32 0, i32 2
  %23 = getelementptr inbounds %struct.iwl_ltr_config_cmd, %struct.iwl_ltr_config_cmd* %11, i32 0, i32 1
  %24 = getelementptr inbounds %struct.iwl_ltr_config_cmd, %struct.iwl_ltr_config_cmd* %11, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = getelementptr inbounds %struct.iwl_ltr_config_cmd, %struct.iwl_ltr_config_cmd* %11, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = getelementptr inbounds %struct.iwl_ltr_config_cmd, %struct.iwl_ltr_config_cmd* %11, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = getelementptr inbounds %struct.iwl_ltr_config_cmd, %struct.iwl_ltr_config_cmd* %11, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %21, i32* %22, i32* %23, i32* %26, i32* %29, i32* %32, i32* %35)
  %37 = icmp ne i32 %36, 7
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %65

41:                                               ; preds = %19
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = load i32, i32* @LTR_CONFIG, align 4
  %47 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %45, i32 %46, i32 0, i32 24, %struct.iwl_ltr_config_cmd* %11)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %55 = call i32 @IWL_ERR(%struct.iwl_mvm* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = sext i32 %57 to i64
  br label %63

61:                                               ; preds = %56
  %62 = load i64, i64* %8, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i64 [ %60, %59 ], [ %62, %61 ]
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %63, %38, %16
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_ltr_config_cmd*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
