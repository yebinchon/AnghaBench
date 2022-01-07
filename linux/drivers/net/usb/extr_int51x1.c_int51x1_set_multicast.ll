; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_int51x1.c_int51x1_set_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_int51x1.c_int51x1_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"promiscuous mode enabled\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@PACKET_TYPE_ALL_MULTICAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"receive all multicast enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"receive own packets only\0A\00", align 1
@SET_ETHERNET_PACKET_FILTER = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @int51x1_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int51x1_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.usbnet* @netdev_priv(%struct.net_device* %5)
  store %struct.usbnet* %6, %struct.usbnet** %3, align 8
  %7 = load i32, i32* @PACKET_TYPE_DIRECTED, align 4
  %8 = load i32, i32* @PACKET_TYPE_BROADCAST, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @PACKET_TYPE_PROMISCUOUS, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netdev_info(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %49

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @netdev_mc_empty(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28, %24
  %36 = load i32, i32* @PACKET_TYPE_ALL_MULTICAST, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %40 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netdev_dbg(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %48

43:                                               ; preds = %28
  %44 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netdev_dbg(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %35
  br label %49

49:                                               ; preds = %48, %16
  %50 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %51 = load i32, i32* @SET_ETHERNET_PACKET_FILTER, align 4
  %52 = load i32, i32* @USB_DIR_OUT, align 4
  %53 = load i32, i32* @USB_TYPE_CLASS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @usbnet_write_cmd_async(%struct.usbnet* %50, i32 %51, i32 %56, i32 %57, i32 0, i32* null, i32 0)
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @usbnet_write_cmd_async(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
