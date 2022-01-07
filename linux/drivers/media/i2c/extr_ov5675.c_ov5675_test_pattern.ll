; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5675 = type { i32 }

@OV5675_TEST_PATTERN_BAR_SHIFT = common dso_local global i32 0, align 4
@OV5675_TEST_PATTERN_ENABLE = common dso_local global i32 0, align 4
@OV5675_REG_TEST_PATTERN = common dso_local global i32 0, align 4
@OV5675_REG_VALUE_08BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5675*, i32)* @ov5675_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5675_test_pattern(%struct.ov5675* %0, i32 %1) #0 {
  %3 = alloca %struct.ov5675*, align 8
  %4 = alloca i32, align 4
  store %struct.ov5675* %0, %struct.ov5675** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @OV5675_TEST_PATTERN_BAR_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @OV5675_TEST_PATTERN_ENABLE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %7, %2
  %15 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %16 = load i32, i32* @OV5675_REG_TEST_PATTERN, align 4
  %17 = load i32, i32* @OV5675_REG_VALUE_08BIT, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ov5675_write_reg(%struct.ov5675* %15, i32 %16, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @ov5675_write_reg(%struct.ov5675*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
