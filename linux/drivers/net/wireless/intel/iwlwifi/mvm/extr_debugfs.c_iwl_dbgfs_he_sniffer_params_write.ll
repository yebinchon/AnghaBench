; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_he_sniffer_params_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_he_sniffer_params_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_notification_wait = type { i32 }
%struct.iwl_he_monitor_cmd = type { i32*, i32 }
%struct.iwl_mvm_sniffer_apply = type { i8*, i32, %struct.iwl_mvm* }

@HE_AIR_SNIFFER_CONFIG_CMD = common dso_local global i32 0, align 4
@DATA_PATH_GROUP = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"%x %2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@iwl_mvm_sniffer_apply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_he_sniffer_params_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_he_sniffer_params_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_notification_wait, align 4
  %11 = alloca %struct.iwl_he_monitor_cmd, align 8
  %12 = alloca %struct.iwl_mvm_sniffer_apply, align 8
  %13 = alloca [1 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = bitcast %struct.iwl_he_monitor_cmd* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %12, i32 0, i32 0
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %12, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %12, i32 0, i32 2
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_mvm* %20, %struct.iwl_mvm** %19, align 8
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %22 = load i32, i32* @HE_AIR_SNIFFER_CONFIG_CMD, align 4
  %23 = load i32, i32* @DATA_PATH_GROUP, align 4
  %24 = call i32 @iwl_cmd_id(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %21, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %26 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* @EIO, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %96

31:                                               ; preds = %4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %35, i32* %38, i32* %41, i32* %44, i32* %47, i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 7
  br i1 %53, label %54, label %57

54:                                               ; preds = %31
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %96

57:                                               ; preds = %31
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %14, align 4
  %62 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %12, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.iwl_he_monitor_cmd, %struct.iwl_he_monitor_cmd* %11, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %12, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 1
  %72 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %73 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = load i32, i32* @iwl_mvm_sniffer_apply, align 4
  %76 = call i32 @iwl_init_notification_wait(i32* %71, %struct.iwl_notification_wait* %10, i32* %72, i32 %74, i32 %75, %struct.iwl_mvm_sniffer_apply* %12)
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %78 = load i32, i32* @HE_AIR_SNIFFER_CONFIG_CMD, align 4
  %79 = load i32, i32* @DATA_PATH_GROUP, align 4
  %80 = call i32 @iwl_cmd_id(i32 %78, i32 %79, i32 0)
  %81 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %77, i32 %80, i32 0, i32 16, %struct.iwl_he_monitor_cmd* %11)
  store i32 %81, i32* %15, align 4
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 1
  %84 = call i32 @iwl_remove_notification(i32* %83, %struct.iwl_notification_wait* %10)
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %57
  %91 = sext i32 %88 to i64
  br label %94

92:                                               ; preds = %57
  %93 = load i64, i64* %8, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %94, %54, %28
  %97 = load i64, i64* %5, align 8
  ret i64 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #2

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_mvm_sniffer_apply*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_he_monitor_cmd*) #2

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
