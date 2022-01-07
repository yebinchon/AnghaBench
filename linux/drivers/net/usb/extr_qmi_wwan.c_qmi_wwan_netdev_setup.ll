; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_netdev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_netdev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32*, i64, i64, i32 }
%struct.usbnet = type { i32, i32 }
%struct.qmi_wwan_state = type { i32 }

@QMI_WWAN_FLAG_RAWIP = common dso_local global i32 0, align 4
@ARPHRD_NONE = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@EVENT_NO_IP_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mode: raw IP\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mode: Ethernet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @qmi_wwan_netdev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmi_wwan_netdev_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.qmi_wwan_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.usbnet* @netdev_priv(%struct.net_device* %5)
  store %struct.usbnet* %6, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 1
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %10, %struct.qmi_wwan_state** %4, align 8
  %11 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %4, align 8
  %12 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @QMI_WWAN_FLAG_RAWIP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @ARPHRD_NONE, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @IFF_POINTOPOINT, align 4
  %28 = load i32, i32* @IFF_NOARP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IFF_MULTICAST, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @EVENT_NO_IP_ALIGN, align 4
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @netdev_dbg(%struct.net_device* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %55

40:                                               ; preds = %1
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @ether_setup(%struct.net_device* %46)
  %48 = load i32, i32* @EVENT_NO_IP_ALIGN, align 4
  %49 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @netdev_dbg(%struct.net_device* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %45, %40
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbnet_change_mtu(%struct.net_device* %56, i32 %59)
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usbnet_change_mtu(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
