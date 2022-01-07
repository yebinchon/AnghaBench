; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_sensor = type { i32 }
%struct.i2c_client = type { i32 }

@ET8EK8_REG_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et8ek8_sensor*, i32)* @et8ek8_set_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_set_test_pattern(%struct.et8ek8_sensor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.et8ek8_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.et8ek8_sensor* %0, %struct.et8ek8_sensor** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %14 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %13, i32 0, i32 0
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 240, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 3
  store i32 %23, i32* %9, align 4
  br label %28

24:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 4
  %27 = add nsw i32 %26, 3
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %21
  store i32 1, i32* %10, align 4
  store i32 224, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 4
  %34 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %30, i32 %31, i32 4379, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %3, align 4
  br label %73

39:                                               ; preds = %29
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 7
  %44 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %40, i32 %41, i32 4385, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %3, align 4
  br label %73

49:                                               ; preds = %39
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 7
  %54 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %50, i32 %51, i32 4388, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  br label %73

59:                                               ; preds = %49
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %60, i32 %61, i32 4396, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %59
  %69 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %70 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %69, i32 %70, i32 5152, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %66, %57, %47, %37
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @et8ek8_i2c_write_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
