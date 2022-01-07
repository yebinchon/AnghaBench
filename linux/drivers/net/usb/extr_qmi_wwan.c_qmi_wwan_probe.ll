; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i64, i64, i32 }
%struct.usb_device_id = type { i64, i32 }
%struct.driver_info = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"setting defaults for dynamic device id\0A\00", align 1
@qmi_wwan_info = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_NUMBER = common dso_local global i32 0, align 4
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Rejecting interface number match for class %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Quectel EC20 quirk, skipping interface 0\0A\00", align 1
@QMI_WWAN_QUIRK_QUECTEL_DYNCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @qmi_wwan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_wwan_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device_id*, align 8
  %7 = alloca %struct.usb_interface_descriptor*, align 8
  %8 = alloca %struct.driver_info*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  store %struct.usb_device_id* %9, %struct.usb_device_id** %6, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.usb_interface_descriptor* %13, %struct.usb_interface_descriptor** %7, align 8
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %6, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %6, align 8
  %23 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %22, i32 0, i32 0
  store i64 ptrtoint (i32* @qmi_wwan_info to i64), i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.usb_device_id*, %struct.usb_device_id** %6, align 8
  %26 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_NUMBER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %33 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %41 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %86

46:                                               ; preds = %31, %24
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = call i64 @quectel_ec20_detected(%struct.usb_interface* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %52 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %86

61:                                               ; preds = %50, %46
  %62 = load %struct.usb_device_id*, %struct.usb_device_id** %6, align 8
  %63 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = bitcast i8* %65 to %struct.driver_info*
  store %struct.driver_info* %66, %struct.driver_info** %8, align 8
  %67 = load %struct.driver_info*, %struct.driver_info** %8, align 8
  %68 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @QMI_WWAN_QUIRK_QUECTEL_DYNCFG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %61
  %74 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %75 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %61
  %83 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %84 = load %struct.usb_device_id*, %struct.usb_device_id** %6, align 8
  %85 = call i32 @usbnet_probe(%struct.usb_interface* %83, %struct.usb_device_id* %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %78, %55, %37
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @quectel_ec20_detected(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_probe(%struct.usb_interface*, %struct.usb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
