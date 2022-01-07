; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hl_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @hl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hl_device*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.hl_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.hl_device* %14, %struct.hl_device** %12, align 8
  %15 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %16 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %39

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %35 [
    i32 130, label %23
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %26 [
    i32 128, label %25
    i32 129, label %25
  ]

25:                                               ; preds = %23, %23
  br label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %39

29:                                               ; preds = %25
  %30 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @hl_set_pwm_info(%struct.hl_device* %30, i32 %31, i32 %32, i64 %33)
  br label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %35, %26, %18
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.hl_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @hl_set_pwm_info(%struct.hl_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
