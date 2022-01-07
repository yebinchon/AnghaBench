; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_set_nic_temperature_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_set_nic_temperature_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }

@EIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@IWL_MVM_DEBUG_SET_TEMPERATURE_MAX = common dso_local global i32 0, align 4
@IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE = common dso_local global i32 0, align 4
@IWL_MVM_DEBUG_SET_TEMPERATURE_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%sabling debug set temperature (temp = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_set_nic_temperature_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_set_nic_temperature_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %12 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* @EIO, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %87

22:                                               ; preds = %14, %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @kstrtoint(i8* %23, i32 10, i32* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %87

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @IWL_MVM_DEBUG_SET_TEMPERATURE_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @IWL_MVM_DEBUG_SET_TEMPERATURE_MIN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %87

44:                                               ; preds = %37
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %82

57:                                               ; preds = %51
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  br label %68

62:                                               ; preds = %44
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %75, i32 %78)
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %81 = call i32 @iwl_mvm_tt_handler(%struct.iwl_mvm* %80)
  br label %82

82:                                               ; preds = %68, %56
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %8, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %82, %41, %26, %19
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_tt_handler(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
