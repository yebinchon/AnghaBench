; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.esd_usb2 = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@dev_attr_firmware = common dso_local global i32 0, align 4
@dev_attr_hardware = common dso_local global i32 0, align 4
@dev_attr_nets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @esd_usb2_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esd_usb2_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.esd_usb2*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.esd_usb2* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.esd_usb2* %7, %struct.esd_usb2** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 0
  %10 = call i32 @device_remove_file(i32* %9, i32* @dev_attr_firmware)
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = call i32 @device_remove_file(i32* %12, i32* @dev_attr_hardware)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = call i32 @device_remove_file(i32* %15, i32* @dev_attr_nets)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = call i32 @usb_set_intfdata(%struct.usb_interface* %17, i32* null)
  %19 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %20 = icmp ne %struct.esd_usb2* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %25 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %30 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %39 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  store %struct.net_device* %46, %struct.net_device** %4, align 8
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i32 @unregister_netdev(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @free_candev(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %37, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %57 = call i32 @unlink_all_urbs(%struct.esd_usb2* %56)
  %58 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %59 = call i32 @kfree(%struct.esd_usb2* %58)
  br label %60

60:                                               ; preds = %55, %1
  ret void
}

declare dso_local %struct.esd_usb2* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

declare dso_local i32 @unlink_all_urbs(%struct.esd_usb2*) #1

declare dso_local i32 @kfree(%struct.esd_usb2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
