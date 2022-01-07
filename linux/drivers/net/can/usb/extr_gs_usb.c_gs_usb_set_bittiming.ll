; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gs_can = type { i32, %struct.usb_interface*, %struct.TYPE_3__ }
%struct.usb_interface = type { i32 }
%struct.TYPE_3__ = type { %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }
%struct.gs_device_bittiming = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GS_USB_BREQ_BITTIMING = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Couldn't set bittimings (err=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gs_usb_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_usb_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gs_can*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_device_bittiming*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.gs_can* @netdev_priv(%struct.net_device* %9)
  store %struct.gs_can* %10, %struct.gs_can** %4, align 8
  %11 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %12 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.can_bittiming* %13, %struct.can_bittiming** %5, align 8
  %14 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %15 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %14, i32 0, i32 1
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gs_device_bittiming* @kmalloc(i32 20, i32 %17)
  store %struct.gs_device_bittiming* %18, %struct.gs_device_bittiming** %8, align 8
  %19 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %20 = icmp ne %struct.gs_device_bittiming* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %85

24:                                               ; preds = %1
  %25 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %26 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %29 = getelementptr inbounds %struct.gs_device_bittiming, %struct.gs_device_bittiming* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %31 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %34 = getelementptr inbounds %struct.gs_device_bittiming, %struct.gs_device_bittiming* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %36 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %39 = getelementptr inbounds %struct.gs_device_bittiming, %struct.gs_device_bittiming* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %41 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %44 = getelementptr inbounds %struct.gs_device_bittiming, %struct.gs_device_bittiming* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %46 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %49 = getelementptr inbounds %struct.gs_device_bittiming, %struct.gs_device_bittiming* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %51 = call i32 @interface_to_usbdev(%struct.usb_interface* %50)
  %52 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %53 = call i32 @interface_to_usbdev(%struct.usb_interface* %52)
  %54 = call i32 @usb_sndctrlpipe(i32 %53, i32 0)
  %55 = load i32, i32* @GS_USB_BREQ_BITTIMING, align 4
  %56 = load i32, i32* @USB_DIR_OUT, align 4
  %57 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %62 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %65 = call i32 @usb_control_msg(i32 %51, i32 %54, i32 %55, i32 %60, i32 %63, i32 0, %struct.gs_device_bittiming* %64, i32 20, i32 1000)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.gs_device_bittiming*, %struct.gs_device_bittiming** %8, align 8
  %67 = call i32 @kfree(%struct.gs_device_bittiming* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %24
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %24
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ 0, %80 ], [ %82, %81 ]
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %21
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.gs_can* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.gs_device_bittiming* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.gs_device_bittiming*, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(%struct.gs_device_bittiming*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
