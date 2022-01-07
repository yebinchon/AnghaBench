; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_armss_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_armss_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ARM_EXTCLK = common dso_local global i32 0, align 4
@ARM_50_OPP = common dso_local global i32 0, align 4
@ARM_100_OPP = common dso_local global i32 0, align 4
@ARM_MAX_OPP = common dso_local global i32 0, align 4
@fw_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRCMU_FW_PROJECT_U8520 = common dso_local global i64 0, align 8
@db8520_armss_freqs = common dso_local global i64* null, align 8
@db8500_armss_freqs = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SET ARM OPP 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @set_armss_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_armss_rate(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* @ARM_EXTCLK, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @ARM_50_OPP, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @ARM_100_OPP, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @ARM_MAX_OPP, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw_info, i32 0, i32 0, i32 0), align 8
  %18 = load i64, i64* @PRCMU_FW_PROJECT_U8520, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i64*, i64** @db8520_armss_freqs, align 8
  store i64* %21, i64** %6, align 8
  %22 = load i64*, i64** @db8520_armss_freqs, align 8
  %23 = call i32 @ARRAY_SIZE(i64* %22)
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load i64*, i64** @db8500_armss_freqs, align 8
  store i64* %25, i64** %6, align 8
  %26 = load i64*, i64** @db8500_armss_freqs, align 8
  %27 = call i32 @ARRAY_SIZE(i64* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %20
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i64*, i64** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %29

47:                                               ; preds = %42, %29
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %65

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @db8500_prcmu_set_arm_opp(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %54, %51
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @db8500_prcmu_set_arm_opp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
