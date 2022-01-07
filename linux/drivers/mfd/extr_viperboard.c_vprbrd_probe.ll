; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_viperboard.c_vprbrd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_viperboard.c_vprbrd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.vprbrd = type { i32*, %struct.TYPE_9__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VPRBRD_USB_REQUEST_MAJOR = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_IN = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@VPRBRD_USB_REQUEST_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"version %x.%02x found at bus %03d address %03d\0A\00", align 1
@vprbrd_devs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to add mfd devices to core.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @vprbrd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.vprbrd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vprbrd* @kzalloc(i32 24, i32 %10)
  store %struct.vprbrd* %11, %struct.vprbrd** %6, align 8
  %12 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %13 = icmp ne %struct.vprbrd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %126

17:                                               ; preds = %2
  %18 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %19 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %18, i32 0, i32 3
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = call i32 @interface_to_usbdev(%struct.usb_interface* %21)
  %23 = call %struct.TYPE_9__* @usb_get_dev(i32 %22)
  %24 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %25 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %24, i32 0, i32 1
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, %struct.vprbrd* %27)
  %29 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %30 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %33 = call i32 @dev_set_drvdata(i32* %31, %struct.vprbrd* %32)
  %34 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %35 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = call i32 @usb_rcvctrlpipe(%struct.TYPE_9__* %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %39 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @VPRBRD_USB_REQUEST_MAJOR, align 4
  %43 = load i32, i32* @VPRBRD_USB_TYPE_IN, align 4
  %44 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %45 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %48 = call i32 @usb_control_msg(%struct.TYPE_9__* %40, i32 %41, i32 %42, i32 %43, i32 0, i32 0, i32* %46, i32 1, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %17
  %52 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %53 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %51, %17
  %58 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %59 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @VPRBRD_USB_REQUEST_MINOR, align 4
  %63 = load i32, i32* @VPRBRD_USB_TYPE_IN, align 4
  %64 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %65 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %68 = call i32 @usb_control_msg(%struct.TYPE_9__* %60, i32 %61, i32 %62, i32 %63, i32 0, i32 0, i32* %66, i32 1, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %81

71:                                               ; preds = %57
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 8
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %76 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %74, %79
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %71, %57
  %82 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %83 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %82, i32 0, i32 0
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 8
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 255
  %88 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %89 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %96 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %87, i32 %94, i32 %99)
  %101 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 0
  %103 = load i32, i32* @vprbrd_devs, align 4
  %104 = load i32, i32* @vprbrd_devs, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = call i32 @mfd_add_hotplug_devices(i32* %102, i32 %103, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %81
  %110 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %114

113:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %126

114:                                              ; preds = %109
  %115 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %116 = icmp ne %struct.vprbrd* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %119 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = call i32 @usb_put_dev(%struct.TYPE_9__* %120)
  %122 = load %struct.vprbrd*, %struct.vprbrd** %6, align 8
  %123 = call i32 @kfree(%struct.vprbrd* %122)
  br label %124

124:                                              ; preds = %117, %114
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %113, %14
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.vprbrd* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_9__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.vprbrd*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.vprbrd*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mfd_add_hotplug_devices(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.vprbrd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
