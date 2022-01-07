; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_pegasus_blacklisted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_pegasus_blacklisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_device_descriptor }
%struct.usb_device_descriptor = type { i64, i64, i64, i32 }

@VENDOR_BELKIN = common dso_local global i32 0, align 4
@USB_CLASS_WIRELESS_CONTROLLER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @pegasus_blacklisted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pegasus_blacklisted(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_device_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 0
  store %struct.usb_device_descriptor* %6, %struct.usb_device_descriptor** %4, align 8
  %7 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %8 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @VENDOR_BELKIN, align 4
  %11 = call i64 @cpu_to_le16(i32 %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %15 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @cpu_to_le16(i32 289)
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_CLASS_WIRELESS_CONTROLLER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %27 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %25, %19, %13, %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
