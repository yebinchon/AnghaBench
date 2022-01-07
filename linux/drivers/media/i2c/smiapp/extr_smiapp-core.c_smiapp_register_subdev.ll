; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_register_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_register_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.smiapp_subdev = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"media_entity_pads_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"v4l2_device_register_subdev failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"media_create_pad_link failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*, %struct.smiapp_subdev*, %struct.smiapp_subdev*, i32, i32, i32)* @smiapp_register_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_register_subdev(%struct.smiapp_sensor* %0, %struct.smiapp_subdev* %1, %struct.smiapp_subdev* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smiapp_sensor*, align 8
  %9 = alloca %struct.smiapp_subdev*, align 8
  %10 = alloca %struct.smiapp_subdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i2c_client*, align 8
  %15 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %8, align 8
  store %struct.smiapp_subdev* %1, %struct.smiapp_subdev** %9, align 8
  store %struct.smiapp_subdev* %2, %struct.smiapp_subdev** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %17 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_6__* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %14, align 8
  %21 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %10, align 8
  %22 = icmp ne %struct.smiapp_subdev* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %81

24:                                               ; preds = %6
  %25 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %26 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %29 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %32 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @media_entity_pads_init(i32* %27, i32 %30, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %7, align 4
  br label %81

42:                                               ; preds = %24
  %43 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %44 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %50 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %49, i32 0, i32 0
  %51 = call i32 @v4l2_device_register_subdev(i32 %48, %struct.TYPE_7__* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %81

59:                                               ; preds = %42
  %60 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %61 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %10, align 8
  %65 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @media_create_pad_link(i32* %62, i32 %63, i32* %66, i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %59
  %73 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %77 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %76, i32 0, i32 0
  %78 = call i32 @v4l2_device_unregister_subdev(%struct.TYPE_7__* %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %81

80:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %72, %54, %37, %23
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_6__*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
