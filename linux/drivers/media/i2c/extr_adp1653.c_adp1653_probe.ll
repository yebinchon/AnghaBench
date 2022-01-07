; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.adp1653_flash = type { i32, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Neither DT not platform data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@adp1653_ops = common dso_local global i32 0, align 4
@adp1653_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_FLASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"adp1653: failed to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adp1653_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp1653_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adp1653_flash*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.adp1653_flash* @devm_kzalloc(%struct.TYPE_7__* %9, i32 40, i32 %10)
  store %struct.adp1653_flash* %11, %struct.adp1653_flash** %6, align 8
  %12 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %13 = icmp eq %struct.adp1653_flash* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @adp1653_of_init(%struct.i2c_client* %24, %struct.adp1653_flash* %25, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %99

35:                                               ; preds = %23
  br label %55

36:                                               ; preds = %17
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %99

48:                                               ; preds = %36
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %54 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %35
  %56 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %57 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %56, i32 0, i32 2
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %60 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %59, i32 0, i32 1
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_5__* %60, %struct.i2c_client* %61, i32* @adp1653_ops)
  %63 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %64 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32* @adp1653_internal_ops, i32** %65, align 8
  %66 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %67 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %68 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %73 = call i32 @adp1653_init_controls(%struct.adp1653_flash* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  br label %91

77:                                               ; preds = %55
  %78 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %79 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @media_entity_pads_init(%struct.TYPE_6__* %80, i32 0, i32* null)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %91

85:                                               ; preds = %77
  %86 = load i32, i32* @MEDIA_ENT_F_FLASH, align 4
  %87 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %88 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %99

91:                                               ; preds = %84, %76
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.TYPE_7__* %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %96 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %95, i32 0, i32 0
  %97 = call i32 @v4l2_ctrl_handler_free(i32* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %91, %85, %42, %33, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.adp1653_flash* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @adp1653_of_init(%struct.i2c_client*, %struct.adp1653_flash*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_5__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @adp1653_init_controls(%struct.adp1653_flash*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
