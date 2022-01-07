; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_sram_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_sram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.fw_img* }
%struct.fw_img = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@IWL_UCODE_SECTION_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%x,%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_sram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_sram_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fw_img*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %16 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %85

21:                                               ; preds = %4
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.fw_img*, %struct.fw_img** %25, align 8
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %26, i64 %30
  store %struct.fw_img* %31, %struct.fw_img** %10, align 8
  %32 = load %struct.fw_img*, %struct.fw_img** %10, align 8
  %33 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i64, i64* @IWL_UCODE_SECTION_DATA, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.fw_img*, %struct.fw_img** %10, align 8
  %40 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i64, i64* @IWL_UCODE_SECTION_DATA, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %78

49:                                               ; preds = %21
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 3
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %49
  %58 = load i64, i64* @EINVAL, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %5, align 8
  br label %85

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i64, i64* @EINVAL, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %5, align 8
  br label %85

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %83

78:                                               ; preds = %21
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %71
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %83, %68, %57, %18
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
