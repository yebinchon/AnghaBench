; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_usb_shark_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_usb_shark_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.shark_device = type { %struct.shark_device*, %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, %struct.shark_device*, %struct.TYPE_6__* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TB_LEN = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@shark_instance = common dso_local global i32 0, align 4
@usb_shark_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@shark_tea_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Griffin radioSHARK2\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"couldn't init tea5777\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_shark_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_shark_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.shark_device*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.shark_device* @kzalloc(i32 64, i32 %10)
  store %struct.shark_device* %11, %struct.shark_device** %6, align 8
  %12 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %13 = icmp ne %struct.shark_device* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %118

16:                                               ; preds = %2
  %17 = load i32, i32* @TB_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.shark_device* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %21 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %20, i32 0, i32 0
  store %struct.shark_device* %19, %struct.shark_device** %21, align 8
  %22 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %23 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %22, i32 0, i32 0
  %24 = load %struct.shark_device*, %struct.shark_device** %23, align 8
  %25 = icmp ne %struct.shark_device* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %114

27:                                               ; preds = %16
  %28 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %29 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %28, i32 0, i32 1
  %30 = load i32, i32* @DRV_NAME, align 4
  %31 = call i32 @v4l2_device_set_name(%struct.TYPE_6__* %29, i32 %30, i32* @shark_instance)
  %32 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 0
  %35 = call i32 @shark_register_leds(%struct.shark_device* %32, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %109

39:                                               ; preds = %27
  %40 = load i32, i32* @usb_shark_release, align 4
  %41 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %42 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 0
  %46 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %47 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %46, i32 0, i32 1
  %48 = call i32 @v4l2_device_register(i32* %45, %struct.TYPE_6__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %53 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %52, i32 0, i32 1
  %54 = call i32 @v4l2_err(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %106

55:                                               ; preds = %39
  %56 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %57 = call i32 @interface_to_usbdev(%struct.usb_interface* %56)
  %58 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %59 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %61 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %60, i32 0, i32 1
  %62 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %63 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %66 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %67 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  store %struct.shark_device* %65, %struct.shark_device** %68, align 8
  %69 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %70 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i32* @shark_tea_ops, i32** %71, align 8
  %72 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %73 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %76 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %79 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strscpy(i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %83 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %84 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %87 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @usb_make_path(i32 %85, i32 %89, i32 4)
  %91 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %92 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %91, i32 0, i32 2
  %93 = load i32, i32* @THIS_MODULE, align 4
  %94 = call i32 @radio_tea5777_init(%struct.TYPE_7__* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %55
  %98 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %99 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %98, i32 0, i32 1
  %100 = call i32 @v4l2_err(%struct.TYPE_6__* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %102

101:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %118

102:                                              ; preds = %97
  %103 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %104 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %103, i32 0, i32 1
  %105 = call i32 @v4l2_device_unregister(%struct.TYPE_6__* %104)
  br label %106

106:                                              ; preds = %102, %51
  %107 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %108 = call i32 @shark_unregister_leds(%struct.shark_device* %107)
  br label %109

109:                                              ; preds = %106, %38
  %110 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %111 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %110, i32 0, i32 0
  %112 = load %struct.shark_device*, %struct.shark_device** %111, align 8
  %113 = call i32 @kfree(%struct.shark_device* %112)
  br label %114

114:                                              ; preds = %109, %26
  %115 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %116 = call i32 @kfree(%struct.shark_device* %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %101, %14
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.shark_device* @kzalloc(i32, i32) #1

declare dso_local %struct.shark_device* @kmalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_set_name(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @shark_register_leds(%struct.shark_device*, i32*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

declare dso_local i32 @radio_tea5777_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @shark_unregister_leds(%struct.shark_device*) #1

declare dso_local i32 @kfree(%struct.shark_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
