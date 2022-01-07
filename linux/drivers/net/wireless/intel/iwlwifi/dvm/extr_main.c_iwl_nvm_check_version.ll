; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_nvm_check_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_nvm_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_nvm_data = type { i64, i64 }
%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"device EEPROM VER=0x%x, CALIB=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Unsupported (too old) EEPROM VER=0x%x < 0x%x CALIB=0x%x < 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_nvm_data*, %struct.iwl_trans*)* @iwl_nvm_check_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_nvm_check_version(%struct.iwl_nvm_data* %0, %struct.iwl_trans* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_nvm_data*, align 8
  %5 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_nvm_data* %0, %struct.iwl_nvm_data** %4, align 8
  store %struct.iwl_trans* %1, %struct.iwl_trans** %5, align 8
  %6 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %8, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15, %2
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %27 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  store i32 0, i32* %3, align 4
  br label %55

34:                                               ; preds = %15
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %36 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @IWL_ERR(%struct.iwl_trans* %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %43, i64 %46, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %34, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i64, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
