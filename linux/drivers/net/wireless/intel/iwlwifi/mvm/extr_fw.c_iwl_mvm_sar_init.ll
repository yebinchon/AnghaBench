; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_sar_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_sar_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"WRDS SAR BIOS table invalid or unavailable. (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"EWRD SAR BIOS table invalid or unavailable. (%d)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_sar_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_sar_init(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = call i32 @iwl_mvm_sar_get_wrds_table(%struct.iwl_mvm* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @IWL_DEBUG_RADIO(%struct.iwl_mvm* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 1, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = call i32 @iwl_mvm_sar_get_ewrd_table(%struct.iwl_mvm* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @IWL_DEBUG_RADIO(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = call i32 @iwl_mvm_sar_select_profile(%struct.iwl_mvm* %23, i32 1, i32 1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %29, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @iwl_mvm_sar_get_wrds_table(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_RADIO(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_sar_get_ewrd_table(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sar_select_profile(%struct.iwl_mvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
