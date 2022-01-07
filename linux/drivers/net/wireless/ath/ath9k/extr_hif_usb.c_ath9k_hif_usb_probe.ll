; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_device = type { i32 }
%struct.hif_device_usb = type { i32, %struct.usb_device_id*, %struct.usb_interface*, %struct.usb_device* }

@STORAGE_DEVICE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ath9k_hif_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hif_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.hif_device_usb*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STORAGE_DEVICE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call i32 @send_eject_command(%struct.usb_interface* %17)
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.hif_device_usb* @kzalloc(i32 32, i32 %20)
  store %struct.hif_device_usb* %21, %struct.hif_device_usb** %7, align 8
  %22 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %23 = icmp ne %struct.hif_device_usb* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %59

27:                                               ; preds = %19
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = call i32 @usb_get_dev(%struct.usb_device* %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %31 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %32 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %31, i32 0, i32 3
  store %struct.usb_device* %30, %struct.usb_device** %32, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %35 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %34, i32 0, i32 2
  store %struct.usb_interface* %33, %struct.usb_interface** %35, align 8
  %36 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %37 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %38 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %37, i32 0, i32 1
  store %struct.usb_device_id* %36, %struct.usb_device_id** %38, align 8
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %41 = call i32 @usb_set_intfdata(%struct.usb_interface* %39, %struct.hif_device_usb* %40)
  %42 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %43 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %42, i32 0, i32 0
  %44 = call i32 @init_completion(i32* %43)
  %45 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %46 = call i32 @ath9k_hif_request_firmware(%struct.hif_device_usb* %45, i32 1)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  br label %52

50:                                               ; preds = %27
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %49
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = call i32 @usb_set_intfdata(%struct.usb_interface* %53, %struct.hif_device_usb* null)
  %55 = load %struct.hif_device_usb*, %struct.hif_device_usb** %7, align 8
  %56 = call i32 @kfree(%struct.hif_device_usb* %55)
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = call i32 @usb_put_dev(%struct.usb_device* %57)
  br label %59

59:                                               ; preds = %52, %24
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %50, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @send_eject_command(%struct.usb_interface*) #1

declare dso_local %struct.hif_device_usb* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hif_device_usb*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ath9k_hif_request_firmware(%struct.hif_device_usb*, i32) #1

declare dso_local i32 @kfree(%struct.hif_device_usb*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
