; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_enable_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_enable_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5670 = type { i32 }

@OV5670_REG_TEST_PATTERN_CTRL = common dso_local global i32 0, align 4
@OV5670_REG_VALUE_08BIT = common dso_local global i32 0, align 4
@OV5670_REG_TEST_PATTERN = common dso_local global i32 0, align 4
@OV5670_TEST_PATTERN_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5670*, i64)* @ov5670_enable_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5670_enable_test_pattern(%struct.ov5670* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5670*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ov5670* %0, %struct.ov5670** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ov5670*, %struct.ov5670** %4, align 8
  %9 = load i32, i32* @OV5670_REG_TEST_PATTERN_CTRL, align 4
  %10 = load i32, i32* @OV5670_REG_VALUE_08BIT, align 4
  %11 = call i32 @ov5670_write_reg(%struct.ov5670* %8, i32 %9, i32 %10, i64 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.ov5670*, %struct.ov5670** %4, align 8
  %18 = load i32, i32* @OV5670_REG_TEST_PATTERN, align 4
  %19 = load i32, i32* @OV5670_REG_VALUE_08BIT, align 4
  %20 = call i32 @ov5670_read_reg(%struct.ov5670* %17, i32 %18, i32 %19, i64* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* @OV5670_TEST_PATTERN_ENABLE, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %37

32:                                               ; preds = %25
  %33 = load i64, i64* @OV5670_TEST_PATTERN_ENABLE, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.ov5670*, %struct.ov5670** %4, align 8
  %39 = load i32, i32* @OV5670_REG_TEST_PATTERN, align 4
  %40 = load i32, i32* @OV5670_REG_VALUE_08BIT, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @ov5670_write_reg(%struct.ov5670* %38, i32 %39, i32 %40, i64 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %23, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ov5670_write_reg(%struct.ov5670*, i32, i32, i64) #1

declare dso_local i32 @ov5670_read_reg(%struct.ov5670*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
