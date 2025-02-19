; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_ecc_sec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_ecc_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ecc_sec_period = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ecc_sec_info_threshold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s ECC corrected errors exceed informational threshold\0A\00", align 1
@ecc_sec_warn_threshold = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s ECC corrected errors exceed warning threshold\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i64*, i32*, i8*)* @xgbe_ecc_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_ecc_sec(%struct.xgbe_prv_data* %0, i64* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @time_before(i64 %10, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %27

19:                                               ; preds = %4
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @ecc_sec_period, align 8
  %22 = load i64, i64* @HZ, align 8
  %23 = mul i64 %21, %22
  %24 = add i64 %20, %23
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %15
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ecc_sec_info_threshold, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @dev_warn_once(i32 %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ecc_sec_warn_threshold, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @dev_warn_once(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 1, i32* %5, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_warn_once(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
