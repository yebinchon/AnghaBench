; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_sta_drain_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_sta_drain_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm_sta = type { i32 }

@IWL_UCODE_REGULAR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_sta_drain_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dbgfs_sta_drain_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %15 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IWL_UCODE_REGULAR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %82

27:                                               ; preds = %17
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @IWL_MVM_STATION_COUNT, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %82

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %82

53:                                               ; preds = %47
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm* %57, i32 %58)
  store %struct.iwl_mvm_sta* %59, %struct.iwl_mvm_sta** %10, align 8
  %60 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %61 = icmp ne %struct.iwl_mvm_sta* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %77

65:                                               ; preds = %53
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %67 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @iwl_mvm_drain_sta(%struct.iwl_mvm* %66, %struct.iwl_mvm_sta* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %74

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i64 [ %69, %71 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %50, %41, %31, %24
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm*, i32) #1

declare dso_local i64 @iwl_mvm_drain_sta(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
