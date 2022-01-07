; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c___mt9t001_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c___mt9t001_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9t001 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to reset the camera\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set up control handlers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9t001*, i32)* @__mt9t001_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt9t001_set_power(%struct.mt9t001* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt9t001*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.mt9t001* %0, %struct.mt9t001** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mt9t001*, %struct.mt9t001** %4, align 8
  %9 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %8, i32 0, i32 1
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.mt9t001*, %struct.mt9t001** %4, align 8
  %15 = call i32 @mt9t001_power_off(%struct.mt9t001* %14)
  store i32 0, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.mt9t001*, %struct.mt9t001** %4, align 8
  %18 = call i32 @mt9t001_power_on(%struct.mt9t001* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %16
  %24 = load %struct.mt9t001*, %struct.mt9t001** %4, align 8
  %25 = call i32 @mt9t001_reset(%struct.mt9t001* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %43

32:                                               ; preds = %23
  %33 = load %struct.mt9t001*, %struct.mt9t001** %4, align 8
  %34 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %33, i32 0, i32 0
  %35 = call i32 @v4l2_ctrl_handler_setup(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %47

43:                                               ; preds = %38, %28
  %44 = load %struct.mt9t001*, %struct.mt9t001** %4, align 8
  %45 = call i32 @mt9t001_power_off(%struct.mt9t001* %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %42, %21, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9t001_power_off(%struct.mt9t001*) #1

declare dso_local i32 @mt9t001_power_on(%struct.mt9t001*) #1

declare dso_local i32 @mt9t001_reset(%struct.mt9t001*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
