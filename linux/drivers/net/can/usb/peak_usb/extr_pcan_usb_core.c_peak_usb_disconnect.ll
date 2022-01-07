; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.peak_usb_device = type { %struct.TYPE_2__*, i32*, i32, i32, %struct.peak_usb_device*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.peak_usb_device*)* }
%struct.net_device = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@PCAN_USB_STATE_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @peak_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peak_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.peak_usb_device* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.peak_usb_device* %9, %struct.peak_usb_device** %3, align 8
  br label %10

10:                                               ; preds = %64, %1
  %11 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %12 = icmp ne %struct.peak_usb_device* %11, null
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %14, i32 0, i32 5
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %21, i32 0, i32 4
  %23 = load %struct.peak_usb_device*, %struct.peak_usb_device** %22, align 8
  store %struct.peak_usb_device* %23, %struct.peak_usb_device** %4, align 8
  %24 = load i32, i32* @PCAN_USB_STATE_CONNECTED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFNAMSIZ, align 4
  %34 = call i32 @strlcpy(i8* %20, i32 %32, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @unregister_netdev(%struct.net_device* %35)
  %37 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %38 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %42 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %44 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.peak_usb_device*)*, i32 (%struct.peak_usb_device*)** %46, align 8
  %48 = icmp ne i32 (%struct.peak_usb_device*)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %13
  %50 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %51 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.peak_usb_device*)*, i32 (%struct.peak_usb_device*)** %53, align 8
  %55 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %56 = call i32 %54(%struct.peak_usb_device* %55)
  br label %57

57:                                               ; preds = %49, %13
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @free_candev(%struct.net_device* %58)
  %60 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %20)
  %63 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %63)
  br label %64

64:                                               ; preds = %57
  %65 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  store %struct.peak_usb_device* %65, %struct.peak_usb_device** %3, align 8
  br label %10

66:                                               ; preds = %10
  %67 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %68 = call i32 @usb_set_intfdata(%struct.usb_interface* %67, i32* null)
  ret void
}

declare dso_local %struct.peak_usb_device* @usb_get_intfdata(%struct.usb_interface*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
