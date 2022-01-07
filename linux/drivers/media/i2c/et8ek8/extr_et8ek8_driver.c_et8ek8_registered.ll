; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.et8ek8_sensor = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"registered!\00", align 1
@dev_attr_priv_mem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not register sysfs entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"controls initialization failed\0A\00", align 1
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @et8ek8_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.et8ek8_sensor*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev* %7)
  store %struct.et8ek8_sensor* %8, %struct.et8ek8_sensor** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 @device_create_file(i32* %15, i32* @dev_attr_priv_mem)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = call i32 @et8ek8_dev_init(%struct.v4l2_subdev* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %43

30:                                               ; preds = %24
  %31 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %32 = call i32 @et8ek8_init_controls(%struct.et8ek8_sensor* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %41 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %42 = call i32 @__et8ek8_get_pad_format(%struct.et8ek8_sensor* %40, i32* null, i32 0, i32 %41)
  store i32 0, i32* %2, align 4
  br label %48

43:                                               ; preds = %35, %29
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 @device_remove_file(i32* %45, i32* @dev_attr_priv_mem)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %39, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @et8ek8_dev_init(%struct.v4l2_subdev*) #1

declare dso_local i32 @et8ek8_init_controls(%struct.et8ek8_sensor*) #1

declare dso_local i32 @__et8ek8_get_pad_format(%struct.et8ek8_sensor*, i32*, i32, i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
