; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to set mac rx frame length\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @smsc75xx_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.usbnet* @netdev_priv(%struct.net_device* %8)
  store %struct.usbnet* %9, %struct.usbnet** %6, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @ETH_HLEN, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @smsc75xx_set_rx_max_frame_length(%struct.usbnet* %10, i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_warn(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @usbnet_change_mtu(%struct.net_device* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc75xx_set_rx_max_frame_length(%struct.usbnet*, i64) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @usbnet_change_mtu(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
