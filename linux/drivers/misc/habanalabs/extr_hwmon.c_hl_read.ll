; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hl_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @hl_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.hl_device*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
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
  br label %87

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %83 [
    i32 133, label %23
    i32 140, label %35
    i32 148, label %47
    i32 144, label %59
    i32 136, label %71
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %26 [
    i32 130, label %25
    i32 129, label %25
    i32 132, label %25
    i32 128, label %25
    i32 131, label %25
  ]

25:                                               ; preds = %23, %23, %23, %23, %23
  br label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %87

29:                                               ; preds = %25
  %30 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @hl_get_temperature(%struct.hl_device* %30, i32 %31, i32 %32)
  %34 = load i64*, i64** %11, align 8
  store i64 %33, i64* %34, align 8
  br label %86

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %38 [
    i32 139, label %37
    i32 137, label %37
    i32 138, label %37
  ]

37:                                               ; preds = %35, %35, %35
  br label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %87

41:                                               ; preds = %37
  %42 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @hl_get_voltage(%struct.hl_device* %42, i32 %43, i32 %44)
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  br label %86

47:                                               ; preds = %21
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %50 [
    i32 147, label %49
    i32 145, label %49
    i32 146, label %49
  ]

49:                                               ; preds = %47, %47, %47
  br label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %87

53:                                               ; preds = %49
  %54 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @hl_get_current(%struct.hl_device* %54, i32 %55, i32 %56)
  %58 = load i64*, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  br label %86

59:                                               ; preds = %21
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %62 [
    i32 143, label %61
    i32 141, label %61
    i32 142, label %61
  ]

61:                                               ; preds = %59, %59, %59
  br label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %87

65:                                               ; preds = %61
  %66 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @hl_get_fan_speed(%struct.hl_device* %66, i32 %67, i32 %68)
  %70 = load i64*, i64** %11, align 8
  store i64 %69, i64* %70, align 8
  br label %86

71:                                               ; preds = %21
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %74 [
    i32 134, label %73
    i32 135, label %73
  ]

73:                                               ; preds = %71, %71
  br label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %87

77:                                               ; preds = %73
  %78 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @hl_get_pwm_info(%struct.hl_device* %78, i32 %79, i32 %80)
  %82 = load i64*, i64** %11, align 8
  store i64 %81, i64* %82, align 8
  br label %86

83:                                               ; preds = %21
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %87

86:                                               ; preds = %77, %65, %53, %41, %29
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %83, %74, %62, %50, %38, %26, %18
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.hl_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i64 @hl_get_temperature(%struct.hl_device*, i32, i32) #1

declare dso_local i64 @hl_get_voltage(%struct.hl_device*, i32, i32) #1

declare dso_local i64 @hl_get_current(%struct.hl_device*, i32, i32) #1

declare dso_local i64 @hl_get_fan_speed(%struct.hl_device*, i32, i32) #1

declare dso_local i64 @hl_get_pwm_info(%struct.hl_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
