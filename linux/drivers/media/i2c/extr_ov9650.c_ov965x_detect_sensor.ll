; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_detect_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_detect_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov965x = type { i64, i32 }

@REG_PID = common dso_local global i32 0, align 4
@REG_VER = common dso_local global i32 0, align 4
@OV9650_ID = common dso_local global i64 0, align 8
@OV9652_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Found OV%04X sensor\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Sensor detection failed (%04X, %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov965x_detect_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_detect_sensor(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ov965x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.ov965x* @to_ov965x(%struct.v4l2_subdev* %7)
  store %struct.ov965x* %8, %struct.ov965x** %3, align 8
  %9 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %10 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %13 = call i32 @__ov965x_set_power(%struct.ov965x* %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %67

17:                                               ; preds = %1
  %18 = call i32 @msleep(i32 25)
  %19 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %20 = load i32, i32* @REG_PID, align 4
  %21 = call i32 @ov965x_read(%struct.ov965x* %19, i32 %20, i32* %4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %26 = load i32, i32* @REG_VER, align 4
  %27 = call i32 @ov965x_read(%struct.ov965x* %25, i32 %26, i32* %5)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %30 = call i32 @__ov965x_set_power(%struct.ov965x* %29, i32 0)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @OV965X_ID(i32 %34, i32 %35)
  %37 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %38 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %40 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OV9650_ID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %33
  %45 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %46 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OV9652_ID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44, %33
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %52 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %53 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @v4l2_info(%struct.v4l2_subdev* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %65

56:                                               ; preds = %44
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %59 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @v4l2_err(%struct.v4l2_subdev* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %60, i32 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %56, %50
  br label %66

66:                                               ; preds = %65, %28
  br label %67

67:                                               ; preds = %66, %16
  %68 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %69 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.ov965x* @to_ov965x(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ov965x_set_power(%struct.ov965x*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i32*) #1

declare dso_local i64 @OV965X_ID(i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
