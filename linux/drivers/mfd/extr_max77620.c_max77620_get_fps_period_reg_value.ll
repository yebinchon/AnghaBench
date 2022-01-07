; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_get_fps_period_reg_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_get_fps_period_reg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_chip = type { i32 }

@MAX20024_FPS_PERIOD_MIN_US = common dso_local global i32 0, align 4
@MAX77620_FPS_PERIOD_MIN_US = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_chip*, i32)* @max77620_get_fps_period_reg_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_get_fps_period_reg_value(%struct.max77620_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77620_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max77620_chip* %0, %struct.max77620_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %9 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %17 [
    i32 130, label %11
    i32 129, label %13
    i32 128, label %15
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @MAX20024_FPS_PERIOD_MIN_US, align 4
  store i32 %12, i32* %6, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @MAX77620_FPS_PERIOD_MIN_US, align 4
  store i32 %14, i32* %6, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX20024_FPS_PERIOD_MIN_US, align 4
  store i32 %16, i32* %6, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %15, %13, %11
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %28, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
