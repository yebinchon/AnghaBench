; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_macronix.c_macronix_nand_fix_broken_get_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_macronix.c_macronix_nand_fix_broken_get_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@macronix_nand_fix_broken_get_timings.broken_get_timings = internal constant [14 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"MX30LF1G18AC\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MX30LF1G28AC\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"MX30LF2G18AC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MX30LF2G28AC\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"MX30LF4G18AC\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"MX30LF4G28AC\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MX60LF8G18AC\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MX30UF1G18AC\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MX30UF1G16AC\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MX30UF2G18AC\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"MX30UF2G16AC\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"MX30UF4G18AC\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MX30UF4G16AC\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MX30UF4G28AC\00", align 1
@ONFI_FEATURE_ADDR_TIMING_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @macronix_nand_fix_broken_get_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macronix_nand_fix_broken_get_timings(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %49

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @macronix_nand_fix_broken_get_timings.broken_get_timings, i64 0, i64 0))
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [14 x i8*], [14 x i8*]* @macronix_nand_fix_broken_get_timings.broken_get_timings, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i8* %19, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %31

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %11

31:                                               ; preds = %26, %11
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @macronix_nand_fix_broken_get_timings.broken_get_timings, i64 0, i64 0))
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %49

36:                                               ; preds = %31
  %37 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ONFI_FEATURE_ADDR_TIMING_MODE, align 4
  %42 = call i32 @bitmap_clear(i32 %40, i32 %41, i32 1)
  %43 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ONFI_FEATURE_ADDR_TIMING_MODE, align 4
  %48 = call i32 @bitmap_clear(i32 %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %36, %35, %9
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
