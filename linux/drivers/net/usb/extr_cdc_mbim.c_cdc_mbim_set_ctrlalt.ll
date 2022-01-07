; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_set_ctrlalt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_set_ctrlalt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.driver_info*, i32 }
%struct.driver_info = type { i32 }
%struct.usb_interface = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_driver = type { i32 }
%struct.usb_device_id = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"driver_info updated to '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*, i32)* @cdc_mbim_set_ctrlalt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdc_mbim_set_ctrlalt(%struct.usbnet* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_driver*, align 8
  %9 = alloca %struct.usb_device_id*, align 8
  %10 = alloca %struct.driver_info*, align 8
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.usb_driver* @to_usb_driver(i32 %15)
  store %struct.usb_driver* %16, %struct.usb_driver** %8, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @usb_set_interface(i32 %19, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %34 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %35 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.usb_device_id* @usb_match_id(%struct.usb_interface* %33, i32 %36)
  store %struct.usb_device_id* %37, %struct.usb_device_id** %9, align 8
  %38 = load %struct.usb_device_id*, %struct.usb_device_id** %9, align 8
  %39 = icmp ne %struct.usb_device_id* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %32
  %44 = load %struct.usb_device_id*, %struct.usb_device_id** %9, align 8
  %45 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.driver_info*
  store %struct.driver_info* %47, %struct.driver_info** %10, align 8
  %48 = load %struct.driver_info*, %struct.driver_info** %10, align 8
  %49 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load %struct.driver_info*, %struct.driver_info** %50, align 8
  %52 = icmp ne %struct.driver_info* %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %55 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %54, i32 0, i32 0
  %56 = load %struct.driver_info*, %struct.driver_info** %10, align 8
  %57 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.driver_info*, %struct.driver_info** %10, align 8
  %61 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  store %struct.driver_info* %60, %struct.driver_info** %62, align 8
  br label %63

63:                                               ; preds = %53, %43
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %40, %30
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.usb_driver* @to_usb_driver(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local %struct.usb_device_id* @usb_match_id(%struct.usb_interface*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
