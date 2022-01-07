; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov13858.c_ov13858_enable_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov13858.c_ov13858_enable_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov13858 = type { i32 }

@OV13858_REG_TEST_PATTERN = common dso_local global i32 0, align 4
@OV13858_REG_VALUE_08BIT = common dso_local global i32 0, align 4
@OV13858_TEST_PATTERN_MASK = common dso_local global i32 0, align 4
@OV13858_TEST_PATTERN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov13858*, i32)* @ov13858_enable_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov13858_enable_test_pattern(%struct.ov13858* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov13858*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ov13858* %0, %struct.ov13858** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ov13858*, %struct.ov13858** %4, align 8
  %9 = load i32, i32* @OV13858_REG_TEST_PATTERN, align 4
  %10 = load i32, i32* @OV13858_REG_VALUE_08BIT, align 4
  %11 = call i32 @ov13858_read_reg(%struct.ov13858* %8, i32 %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* @OV13858_TEST_PATTERN_MASK, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @OV13858_TEST_PATTERN_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %16
  %30 = load i32, i32* @OV13858_TEST_PATTERN_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.ov13858*, %struct.ov13858** %4, align 8
  %36 = load i32, i32* @OV13858_REG_TEST_PATTERN, align 4
  %37 = load i32, i32* @OV13858_REG_VALUE_08BIT, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ov13858_write_reg(%struct.ov13858* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ov13858_read_reg(%struct.ov13858*, i32, i32, i32*) #1

declare dso_local i32 @ov13858_write_reg(%struct.ov13858*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
