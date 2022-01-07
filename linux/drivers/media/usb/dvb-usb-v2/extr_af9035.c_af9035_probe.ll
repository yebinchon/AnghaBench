; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@USB_VID_TERRATEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Afatech\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"rejecting device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @af9035_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca [8 x i8], align 1
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %6, align 8
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 8)
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %18 = call i32 @usb_string(%struct.usb_device* %12, i32 %16, i8* %17, i32 8)
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load i32, i32* @USB_VID_TERRATEC, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = icmp eq i32 %31, 153
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %35 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %26, %2
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %47 = call i32 @dvb_usbv2_probe(%struct.usb_interface* %45, %struct.usb_device_id* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dvb_usbv2_probe(%struct.usb_interface*, %struct.usb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
