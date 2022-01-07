; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-timb.c_timbradio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-timb.c_timbradio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.timb_radio_platform_data* }
%struct.timb_radio_platform_data = type { i32, i32, i32 }
%struct.timbradio = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, i32*, i32, %struct.timb_radio_platform_data }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32*, i32, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Platform data missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Timberdale Radio\00", align 1
@timbradio_fops = common dso_local global i32 0, align 4
@timbradio_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Error reg video\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to register: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @timbradio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timbradio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.timb_radio_platform_data*, align 8
  %5 = alloca %struct.timbradio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.timb_radio_platform_data*, %struct.timb_radio_platform_data** %9, align 8
  store %struct.timb_radio_platform_data* %10, %struct.timb_radio_platform_data** %4, align 8
  %11 = load %struct.timb_radio_platform_data*, %struct.timb_radio_platform_data** %4, align 8
  %12 = icmp ne %struct.timb_radio_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %154

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.timbradio* @devm_kzalloc(%struct.TYPE_12__* %21, i32 96, i32 %22)
  store %struct.timbradio* %23, %struct.timbradio** %5, align 8
  %24 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %25 = icmp ne %struct.timbradio* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %154

29:                                               ; preds = %19
  %30 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %31 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %30, i32 0, i32 5
  %32 = load %struct.timb_radio_platform_data*, %struct.timb_radio_platform_data** %4, align 8
  %33 = bitcast %struct.timb_radio_platform_data* %31 to i8*
  %34 = bitcast %struct.timb_radio_platform_data* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %36 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %35, i32 0, i32 4
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %39 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strscpy(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %43 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %44 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 6
  store i32* @timbradio_fops, i32** %45, align 8
  %46 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %47 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  store i32* @timbradio_ioctl_ops, i32** %48, align 8
  %49 = load i32, i32* @video_device_release_empty, align 4
  %50 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %51 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %54 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %57 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %56, i32 0, i32 4
  %58 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %59 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i32* %57, i32** %60, align 8
  %61 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %62 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %65 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %68 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** @DRIVER_NAME, align 8
  %72 = call i32 @strscpy(i32 %70, i8* %71, i32 4)
  %73 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %74 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %73, i32 0, i32 0
  %75 = call i32 @v4l2_device_register(i32* null, %struct.TYPE_11__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %29
  br label %154

79:                                               ; preds = %29
  %80 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %81 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %80, i32 0, i32 0
  %82 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %83 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %84, align 8
  %85 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %86 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %85, i32 0, i32 0
  %87 = load %struct.timb_radio_platform_data*, %struct.timb_radio_platform_data** %4, align 8
  %88 = getelementptr inbounds %struct.timb_radio_platform_data, %struct.timb_radio_platform_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @i2c_get_adapter(i32 %89)
  %91 = load %struct.timb_radio_platform_data*, %struct.timb_radio_platform_data** %4, align 8
  %92 = getelementptr inbounds %struct.timb_radio_platform_data, %struct.timb_radio_platform_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @v4l2_i2c_new_subdev_board(%struct.TYPE_11__* %86, i32 %90, i32 %93, i32* null)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %97 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  %98 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %99 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %98, i32 0, i32 0
  %100 = load %struct.timb_radio_platform_data*, %struct.timb_radio_platform_data** %4, align 8
  %101 = getelementptr inbounds %struct.timb_radio_platform_data, %struct.timb_radio_platform_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @i2c_get_adapter(i32 %102)
  %104 = load %struct.timb_radio_platform_data*, %struct.timb_radio_platform_data** %4, align 8
  %105 = getelementptr inbounds %struct.timb_radio_platform_data, %struct.timb_radio_platform_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @v4l2_i2c_new_subdev_board(%struct.TYPE_11__* %99, i32 %103, i32 %106, i32* null)
  %108 = bitcast i8* %107 to %struct.TYPE_9__*
  %109 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %110 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %109, i32 0, i32 2
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %110, align 8
  %111 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %112 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %79
  %116 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %117 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %116, i32 0, i32 2
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = icmp eq %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %115, %79
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %150

123:                                              ; preds = %115
  %124 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %125 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %124, i32 0, i32 2
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %130 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %133 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %132, i32 0, i32 1
  %134 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %135 = call i32 @video_register_device(%struct.TYPE_10__* %133, i32 %134, i32 -1)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %123
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %150

142:                                              ; preds = %123
  %143 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %144 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %143, i32 0, i32 1
  %145 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %146 = call i32 @video_set_drvdata(%struct.TYPE_10__* %144, %struct.timbradio* %145)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %149 = call i32 @platform_set_drvdata(%struct.platform_device* %147, %struct.timbradio* %148)
  store i32 0, i32* %2, align 4
  br label %160

150:                                              ; preds = %138, %120
  %151 = load %struct.timbradio*, %struct.timbradio** %5, align 8
  %152 = getelementptr inbounds %struct.timbradio, %struct.timbradio* %151, i32 0, i32 0
  %153 = call i32 @v4l2_device_unregister(%struct.TYPE_11__* %152)
  br label %154

154:                                              ; preds = %150, %78, %26, %13
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load i32, i32* %6, align 4
  %158 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %154, %142
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.timbradio* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_11__*) #1

declare dso_local i8* @v4l2_i2c_new_subdev_board(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @i2c_get_adapter(i32) #1

declare dso_local i32 @video_register_device(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_10__*, %struct.timbradio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.timbradio*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
