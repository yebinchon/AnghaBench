; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_tt_tx_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_tt_tx_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to %s Tx protection\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s Tx protection\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32)* @iwl_mvm_tt_tx_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_tt_tx_protection(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm* %16, i32 %17)
  store %struct.iwl_mvm_sta* %18, %struct.iwl_mvm_sta** %5, align 8
  %19 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %20 = icmp ne %struct.iwl_mvm_sta* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %54

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %54

29:                                               ; preds = %22
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %31 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @iwl_mvm_tx_protection(%struct.iwl_mvm* %30, %struct.iwl_mvm_sta* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @IWL_ERR(%struct.iwl_mvm* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %53

43:                                               ; preds = %29
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %49 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %36
  br label %54

54:                                               ; preds = %53, %28, %21
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %8

57:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_tx_protection(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i8*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
