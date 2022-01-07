; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_ordinal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_ordinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, %struct.ipw2100_ordinals }
%struct.ipw2100_ordinals = type { i64 }

@IPW_ORD_TAB_1_ENTRY_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"wrong size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"wrong table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i64, i64*, i64*)* @ipw2100_set_ordinal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_ordinal(%struct.ipw2100_priv* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw2100_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ipw2100_ordinals*, align 8
  %11 = alloca i64, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %12, i32 0, i32 1
  store %struct.ipw2100_ordinals* %13, %struct.ipw2100_ordinals** %10, align 8
  %14 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @IS_ORDINAL_TABLE_ONE(%struct.ipw2100_ordinals* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %4
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPW_ORD_TAB_1_ENTRY_SIZE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i64, i64* @IPW_ORD_TAB_1_ENTRY_SIZE, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  %26 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %61

29:                                               ; preds = %18
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %10, align 8
  %34 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = shl i64 %36, 2
  %38 = add nsw i64 %35, %37
  %39 = call i32 @read_nic_dword(i32 %32, i64 %38, i64* %11)
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @write_nic_dword(i32 %42, i64 %43, i64 %45)
  %47 = load i64, i64* @IPW_ORD_TAB_1_ENTRY_SIZE, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %5, align 4
  br label %61

49:                                               ; preds = %4
  %50 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @IS_ORDINAL_TABLE_TWO(%struct.ipw2100_ordinals* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %55, %29, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @IS_ORDINAL_TABLE_ONE(%struct.ipw2100_ordinals*, i64) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @read_nic_dword(i32, i64, i64*) #1

declare dso_local i32 @write_nic_dword(i32, i64, i64) #1

declare dso_local i64 @IS_ORDINAL_TABLE_TWO(%struct.ipw2100_ordinals*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
