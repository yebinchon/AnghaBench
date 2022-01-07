; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2659 = type { i32 }
%struct.i2c_client = type { i32 }

@REG_PRE_ISP_CTRL00 = common dso_local global i32 0, align 4
@TEST_PATTERN_ENABLE = common dso_local global i32 0, align 4
@VERTICAL_COLOR_BAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2659*, i32)* @ov2659_set_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2659_set_test_pattern(%struct.ov2659* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov2659*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ov2659* %0, %struct.ov2659** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ov2659*, %struct.ov2659** %4, align 8
  %10 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @REG_PRE_ISP_CTRL00, align 4
  %14 = call i32 @ov2659_read(%struct.i2c_client* %12, i32 %13, i32* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %33 [
    i32 0, label %21
    i32 1, label %26
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @TEST_PATTERN_ENABLE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @VERTICAL_COLOR_BAR_MASK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @TEST_PATTERN_ENABLE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %19, %26, %21
  %34 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %35 = load i32, i32* @REG_PRE_ISP_CTRL00, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ov2659_write(%struct.i2c_client* %34, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ov2659_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @ov2659_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
