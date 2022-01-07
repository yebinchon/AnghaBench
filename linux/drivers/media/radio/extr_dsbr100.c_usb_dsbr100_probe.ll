; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dsbr100_device = type { i32, i32, %struct.dsbr100_device*, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.v4l2_device }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32*, i32, i32*, i32*, %struct.v4l2_device*, i32 }
%struct.v4l2_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TB_LEN = common dso_local global i32 0, align 4
@usb_dsbr100_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@usb_dsbr100_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't register control\0A\00", align 1
@usb_dsbr100_fops = common dso_local global i32 0, align 4
@usb_dsbr100_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@FREQ_MIN = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_dsbr100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dsbr100_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.dsbr100_device*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dsbr100_device* @kzalloc(i32 104, i32 %9)
  store %struct.dsbr100_device* %10, %struct.dsbr100_device** %6, align 8
  %11 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %12 = icmp ne %struct.dsbr100_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %151

16:                                               ; preds = %2
  %17 = load i32, i32* @TB_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dsbr100_device* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %21 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %20, i32 0, i32 2
  store %struct.dsbr100_device* %19, %struct.dsbr100_device** %21, align 8
  %22 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %23 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %22, i32 0, i32 2
  %24 = load %struct.dsbr100_device*, %struct.dsbr100_device** %23, align 8
  %25 = icmp ne %struct.dsbr100_device* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %28 = call i32 @kfree(%struct.dsbr100_device* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %151

31:                                               ; preds = %16
  %32 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %33 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %32, i32 0, i32 7
  store %struct.v4l2_device* %33, %struct.v4l2_device** %7, align 8
  %34 = load i32, i32* @usb_dsbr100_release, align 4
  %35 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 0
  %39 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %40 = call i32 @v4l2_device_register(i32* %38, %struct.v4l2_device* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %45 = call i32 @v4l2_err(%struct.v4l2_device* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %143

46:                                               ; preds = %31
  %47 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %48 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %47, i32 0, i32 3
  %49 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__* %48, i32 1)
  %50 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %51 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %50, i32 0, i32 3
  %52 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %53 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_7__* %51, i32* @usb_dsbr100_ctrl_ops, i32 %52, i32 0, i32 1, i32 1, i32 1)
  %54 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %55 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %61 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %8, align 4
  %64 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %65 = call i32 @v4l2_err(%struct.v4l2_device* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %137

66:                                               ; preds = %46
  %67 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %68 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %67, i32 0, i32 6
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %71 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strscpy(i32 %73, i32 %76, i32 4)
  %78 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %79 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %80 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  store %struct.v4l2_device* %78, %struct.v4l2_device** %81, align 8
  %82 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %83 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  store i32* @usb_dsbr100_fops, i32** %84, align 8
  %85 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %86 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  store i32* @usb_dsbr100_ioctl_ops, i32** %87, align 8
  %88 = load i32, i32* @video_device_release_empty, align 4
  %89 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %90 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 8
  %92 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %93 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %92, i32 0, i32 6
  %94 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %95 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32* %93, i32** %96, align 8
  %97 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %98 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %97, i32 0, i32 3
  %99 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %100 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %101, align 8
  %102 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %103 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %106 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = call i32 @interface_to_usbdev(%struct.usb_interface* %108)
  %110 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %111 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @FREQ_MIN, align 4
  %113 = load i32, i32* @FREQ_MUL, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %116 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %118 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %120 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %119, i32 0, i32 4
  %121 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %122 = call i32 @video_set_drvdata(%struct.TYPE_6__* %120, %struct.dsbr100_device* %121)
  %123 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %124 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %125 = call i32 @usb_set_intfdata(%struct.usb_interface* %123, %struct.dsbr100_device* %124)
  %126 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %127 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %126, i32 0, i32 4
  %128 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %129 = load i32, i32* @radio_nr, align 4
  %130 = call i32 @video_register_device(%struct.TYPE_6__* %127, i32 %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %66
  store i32 0, i32* %3, align 4
  br label %151

134:                                              ; preds = %66
  %135 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %136 = call i32 @v4l2_err(%struct.v4l2_device* %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %59
  %138 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %139 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %138, i32 0, i32 3
  %140 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %139)
  %141 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %142 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %141)
  br label %143

143:                                              ; preds = %137, %43
  %144 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %145 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %144, i32 0, i32 2
  %146 = load %struct.dsbr100_device*, %struct.dsbr100_device** %145, align 8
  %147 = call i32 @kfree(%struct.dsbr100_device* %146)
  %148 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %149 = call i32 @kfree(%struct.dsbr100_device* %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %143, %133, %26, %13
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.dsbr100_device* @kzalloc(i32, i32) #1

declare dso_local %struct.dsbr100_device* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.dsbr100_device*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.v4l2_device*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_6__*, %struct.dsbr100_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.dsbr100_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
