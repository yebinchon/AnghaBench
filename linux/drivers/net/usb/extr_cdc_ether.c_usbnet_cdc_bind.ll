; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cdc_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_cdc_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdc_state*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.cdc_state*
  store %struct.cdc_state* %11, %struct.cdc_state** %7, align 8
  %12 = call i32 @BUILD_BUG_ON(i32 1)
  %13 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %15 = call i32 @usbnet_ether_cdc_bind(%struct.usbnet* %13, %struct.usb_interface* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %22 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %23 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usbnet_get_ethernet_addr(%struct.usbnet* %21, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %32 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_set_intfdata(i32 %33, i32* null)
  %35 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %36 = call i32 @driver_of(%struct.usb_interface* %35)
  %37 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %38 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @usb_driver_release_interface(i32 %36, i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %30, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @usbnet_ether_cdc_bind(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @usbnet_get_ethernet_addr(%struct.usbnet*, i32) #1

declare dso_local i32 @usb_set_intfdata(i32, i32*) #1

declare dso_local i32 @usb_driver_release_interface(i32, i32) #1

declare dso_local i32 @driver_of(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
