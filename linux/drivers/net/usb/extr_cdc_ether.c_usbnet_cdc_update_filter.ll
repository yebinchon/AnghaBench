; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_update_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_update_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.cdc_state = type { %struct.usb_interface* }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USB_CDC_PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@USB_CDC_PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@USB_CDC_PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@USB_CDC_PACKET_TYPE_ALL_MULTICAST = common dso_local global i32 0, align 4
@USB_CDC_SET_ETHERNET_PACKET_FILTER = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @usbnet_cdc_update_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbnet_cdc_update_filter(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.cdc_state*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 2
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.cdc_state*
  store %struct.cdc_state* %10, %struct.cdc_state** %3, align 8
  %11 = load %struct.cdc_state*, %struct.cdc_state** %3, align 8
  %12 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %11, i32 0, i32 0
  %13 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  store %struct.usb_interface* %13, %struct.usb_interface** %4, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load i32, i32* @USB_CDC_PACKET_TYPE_DIRECTED, align 4
  %18 = load i32, i32* @USB_CDC_PACKET_TYPE_BROADCAST, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @USB_CDC_PACKET_TYPE_PROMISCUOUS, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @netdev_mc_empty(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_ALLMULTI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34, %30
  %42 = load i32, i32* @USB_CDC_PACKET_TYPE_ALL_MULTICAST, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_sndctrlpipe(i32 %51, i32 0)
  %53 = load i32, i32* @USB_CDC_SET_ETHERNET_PACKET_FILTER, align 4
  %54 = load i32, i32* @USB_TYPE_CLASS, align 4
  %55 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %65 = call i32 @usb_control_msg(i32 %48, i32 %52, i32 %53, i32 %56, i32 %57, i32 %63, i32* null, i32 0, i32 %64)
  ret void
}

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
