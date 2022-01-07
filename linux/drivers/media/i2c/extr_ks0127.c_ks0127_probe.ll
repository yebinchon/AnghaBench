; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ks0127 = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s chip found @ 0x%x (%s)\0A\00", align 1
@I2C_KS0127_ADDON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"addon\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"on-board\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ks0127_ops = common dso_local global i32 0, align 4
@KS_CMDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ks0127_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks0127_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ks0127*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @I2C_KS0127_ADDON, align 4
  %13 = ashr i32 %12, 1
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @v4l_info(%struct.i2c_client* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %20, i32 %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ks0127* @devm_kzalloc(i32* %28, i32 4, i32 %29)
  store %struct.ks0127* %30, %struct.ks0127** %6, align 8
  %31 = load %struct.ks0127*, %struct.ks0127** %6, align 8
  %32 = icmp eq %struct.ks0127* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load %struct.ks0127*, %struct.ks0127** %6, align 8
  %38 = getelementptr inbounds %struct.ks0127, %struct.ks0127* %37, i32 0, i32 0
  store %struct.v4l2_subdev* %38, %struct.v4l2_subdev** %7, align 8
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %39, %struct.i2c_client* %40, i32* @ks0127_ops)
  %42 = call i32 (...) @init_reg_defaults()
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %44 = load i32, i32* @KS_CMDA, align 4
  %45 = call i32 @ks0127_write(%struct.v4l2_subdev* %43, i32 %44, i32 44)
  %46 = call i32 @mdelay(i32 10)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %48 = call i32 @ks0127_init(%struct.v4l2_subdev* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %36, %33
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i8*, i32, i32) #1

declare dso_local %struct.ks0127* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @init_reg_defaults(...) #1

declare dso_local i32 @ks0127_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ks0127_init(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
