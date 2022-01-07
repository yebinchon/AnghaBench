; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_tx_flush_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_tx_flush_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IWL_UCODE_REGULAR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"FLUSHING all tids queues on sta_id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"FLUSHING queues mask to flush = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_tx_flush_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dbgfs_tx_flush_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %13 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IWL_UCODE_REGULAR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %78

25:                                               ; preds = %15
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @kstrtou32(i8* %26, i32 0, i32* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %78

32:                                               ; preds = %25
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %34 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @iwl_mvm_flush_sta_tids(%struct.iwl_mvm* %43, i32 %44, i32 255, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %50

48:                                               ; preds = %36
  %49 = load i64, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i64 [ %45, %47 ], [ %49, %48 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %32
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @iwl_mvm_flush_tx_path(%struct.iwl_mvm* %64, i32 %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %71

69:                                               ; preds = %57
  %70 = load i64, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i64 [ %66, %68 ], [ %70, %69 ]
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %71, %50, %29, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i64 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iwl_mvm_flush_sta_tids(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @iwl_mvm_flush_tx_path(%struct.iwl_mvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
