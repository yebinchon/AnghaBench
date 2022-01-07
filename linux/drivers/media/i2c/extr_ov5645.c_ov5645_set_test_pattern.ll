; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5645 = type { i32 }

@OV5645_TEST_PATTERN_ENABLE = common dso_local global i32 0, align 4
@OV5645_PRE_ISP_TEST_SETTING_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5645*, i64)* @ov5645_set_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5645_set_test_pattern(%struct.ov5645* %0, i64 %1) #0 {
  %3 = alloca %struct.ov5645*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ov5645* %0, %struct.ov5645** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = sub nsw i64 %9, 1
  %11 = call i32 @OV5645_SET_TEST_PATTERN(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @OV5645_TEST_PATTERN_ENABLE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %17 = load i32, i32* @OV5645_PRE_ISP_TEST_SETTING_1, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ov5645_write_reg(%struct.ov5645* %16, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @OV5645_SET_TEST_PATTERN(i64) #1

declare dso_local i32 @ov5645_write_reg(%struct.ov5645*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
