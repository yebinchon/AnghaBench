; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-platform-si4713.c_radio_si4713_pdriver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-platform-si4713.c_radio_si4713_pdriver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32* }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.radio_si4713_platform_data* }
%struct.radio_si4713_platform_data = type { i32 }
%struct.radio_si4713_device = type { i32, %struct.TYPE_8__, i32 }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Cannot proceed without platform data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to alloc video device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register v4l2 device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot get v4l2 subdevice\0A\00", align 1
@radio_si4713_vdev_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@V4L2_CAP_MODULATOR = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_OUTPUT = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not register video device.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"New device successfully probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @radio_si4713_pdriver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_si4713_pdriver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.radio_si4713_platform_data*, align 8
  %4 = alloca %struct.radio_si4713_device*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.radio_si4713_platform_data*, %struct.radio_si4713_platform_data** %9, align 8
  store %struct.radio_si4713_platform_data* %10, %struct.radio_si4713_platform_data** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.radio_si4713_platform_data*, %struct.radio_si4713_platform_data** %3, align 8
  %12 = icmp ne %struct.radio_si4713_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_9__* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %112

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.radio_si4713_device* @devm_kzalloc(%struct.TYPE_9__* %21, i32 48, i32 %22)
  store %struct.radio_si4713_device* %23, %struct.radio_si4713_device** %4, align 8
  %24 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %25 = icmp ne %struct.radio_si4713_device* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %112

32:                                               ; preds = %19
  %33 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %34 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %33, i32 0, i32 2
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %39 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %38, i32 0, i32 0
  %40 = call i32 @v4l2_device_register(%struct.TYPE_9__* %37, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_9__* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %112

47:                                               ; preds = %32
  %48 = load %struct.radio_si4713_platform_data*, %struct.radio_si4713_platform_data** %3, align 8
  %49 = getelementptr inbounds %struct.radio_si4713_platform_data, %struct.radio_si4713_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.v4l2_subdev* @i2c_get_clientdata(i32 %50)
  store %struct.v4l2_subdev* %51, %struct.v4l2_subdev** %5, align 8
  %52 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %53 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %52, i32 0, i32 0
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %55 = call i32 @v4l2_device_register_subdev(i32* %53, %struct.v4l2_subdev* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %108

62:                                               ; preds = %47
  %63 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %64 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_8__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 bitcast (%struct.TYPE_8__* @radio_si4713_vdev_template to i8*), i64 32, i1 false)
  %66 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %67 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %66, i32 0, i32 0
  %68 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %69 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32* %67, i32** %70, align 8
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %75 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %78 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %77, i32 0, i32 2
  %79 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %80 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32* %78, i32** %81, align 8
  %82 = load i32, i32* @V4L2_CAP_MODULATOR, align 4
  %83 = load i32, i32* @V4L2_CAP_RDS_OUTPUT, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %86 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %89 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %88, i32 0, i32 1
  %90 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %91 = call i32 @video_set_drvdata(%struct.TYPE_8__* %89, %struct.radio_si4713_device* %90)
  %92 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %93 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %92, i32 0, i32 1
  %94 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %95 = load i32, i32* @radio_nr, align 4
  %96 = call i64 @video_register_device(%struct.TYPE_8__* %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %62
  %99 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %108

104:                                              ; preds = %62
  %105 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_info(%struct.TYPE_9__* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %112

108:                                              ; preds = %98, %58
  %109 = load %struct.radio_si4713_device*, %struct.radio_si4713_device** %4, align 8
  %110 = getelementptr inbounds %struct.radio_si4713_device, %struct.radio_si4713_device* %109, i32 0, i32 0
  %111 = call i32 @v4l2_device_unregister(i32* %110)
  br label %112

112:                                              ; preds = %108, %104, %43, %26, %13
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.radio_si4713_device* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_device_register(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(i32) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.radio_si4713_device*) #1

declare dso_local i64 @video_register_device(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
