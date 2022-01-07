; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32 }

@REG_COM23 = common dso_local global i32 0, align 4
@COM23_TEST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, i32)* @ov965x_set_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_test_pattern(%struct.ov965x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %9 = load i32, i32* @REG_COM23, align 4
  %10 = call i32 @ov965x_read(%struct.ov965x* %8, i32 %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @COM23_TEST_MODE, align 4
  %21 = or i32 %19, %20
  br label %27

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @COM23_TEST_MODE, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %21, %18 ], [ %26, %22 ]
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %30 = load i32, i32* @REG_COM23, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ov965x_write(%struct.ov965x* %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i32*) #1

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
