; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_usb_amradio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_usb_amradio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.amradio_device = type { double, %struct.amradio_device*, %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.usb_interface*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i32, i32*, i32*, %struct.TYPE_10__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"kmalloc for amradio_device failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"kmalloc for radio->buffer failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@usb_amradio_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"couldn't register control\0A\00", align 1
@usb_amradio_release = common dso_local global i32 0, align 4
@usb_amradio_fops = common dso_local global i32 0, align 4
@usb_amradio_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_HW_FREQ_SEEK = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"could not register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_amradio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_amradio_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.amradio_device*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.amradio_device* @kzalloc(i32 112, i32 %8)
  store %struct.amradio_device* %9, %struct.amradio_device** %6, align 8
  %10 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %11 = icmp ne %struct.amradio_device* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %170

18:                                               ; preds = %2
  %19 = load i32, i32* @BUFFER_LENGTH, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.amradio_device* @kmalloc(i32 %19, i32 %20)
  %22 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %23 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %22, i32 0, i32 1
  store %struct.amradio_device* %21, %struct.amradio_device** %23, align 8
  %24 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %25 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %24, i32 0, i32 1
  %26 = load %struct.amradio_device*, %struct.amradio_device** %25, align 8
  %27 = icmp ne %struct.amradio_device* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %167

34:                                               ; preds = %18
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %38 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %37, i32 0, i32 2
  %39 = call i32 @v4l2_device_register(i32* %36, %struct.TYPE_10__* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %162

46:                                               ; preds = %34
  %47 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %48 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %47, i32 0, i32 3
  %49 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__* %48, i32 1)
  %50 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %51 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %50, i32 0, i32 3
  %52 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %53 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_11__* %51, i32* @usb_amradio_ctrl_ops, i32 %52, i32 0, i32 1, i32 1, i32 1)
  %54 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %55 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %61 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %158

67:                                               ; preds = %46
  %68 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %69 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %68, i32 0, i32 7
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %72 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %71, i32 0, i32 3
  %73 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %74 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %75, align 8
  %76 = load i32, i32* @usb_amradio_release, align 4
  %77 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %78 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %81 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %85 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strscpy(i32 %83, i32 %87, i32 4)
  %89 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %90 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %89, i32 0, i32 2
  %91 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %92 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %95 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  store i32* @usb_amradio_fops, i32** %96, align 8
  %97 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %98 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  store i32* @usb_amradio_ioctl_ops, i32** %99, align 8
  %100 = load i32, i32* @video_device_release_empty, align 4
  %101 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %102 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %105 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %104, i32 0, i32 7
  %106 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %107 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32* %105, i32** %108, align 8
  %109 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %110 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @V4L2_CAP_HW_FREQ_SEEK, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %115 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %118 = call i32 @interface_to_usbdev(%struct.usb_interface* %117)
  %119 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %120 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %122 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %123 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %122, i32 0, i32 5
  store %struct.usb_interface* %121, %struct.usb_interface** %123, align 8
  %124 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %125 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %126 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %125, i32 0, i32 2
  %127 = call i32 @usb_set_intfdata(%struct.usb_interface* %124, %struct.TYPE_10__* %126)
  %128 = load double, double* @FREQ_MUL, align 8
  %129 = fmul double 0x4057CA3D70A3D70A, %128
  %130 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %131 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %130, i32 0, i32 0
  store double %129, double* %131, align 8
  %132 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %133 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %132, i32 0, i32 4
  %134 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %135 = call i32 @video_set_drvdata(%struct.TYPE_9__* %133, %struct.amradio_device* %134)
  %136 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %137 = call i32 @usb_amradio_init(%struct.amradio_device* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %67
  br label %154

141:                                              ; preds = %67
  %142 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %143 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %142, i32 0, i32 4
  %144 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %145 = load i32, i32* @radio_nr, align 4
  %146 = call i32 @video_register_device(%struct.TYPE_9__* %143, i32 %144, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %151 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %150, i32 0, i32 0
  %152 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %154

153:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %172

154:                                              ; preds = %149, %140
  %155 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %156 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %155, i32 0, i32 3
  %157 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_11__* %156)
  br label %158

158:                                              ; preds = %154, %59
  %159 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %160 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %159, i32 0, i32 2
  %161 = call i32 @v4l2_device_unregister(%struct.TYPE_10__* %160)
  br label %162

162:                                              ; preds = %158, %42
  %163 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %164 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %163, i32 0, i32 1
  %165 = load %struct.amradio_device*, %struct.amradio_device** %164, align 8
  %166 = call i32 @kfree(%struct.amradio_device* %165)
  br label %167

167:                                              ; preds = %162, %28
  %168 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %169 = call i32 @kfree(%struct.amradio_device* %168)
  br label %170

170:                                              ; preds = %167, %12
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %153
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.amradio_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.amradio_device* @kmalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_10__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_9__*, %struct.amradio_device*) #1

declare dso_local i32 @usb_amradio_init(%struct.amradio_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.amradio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
