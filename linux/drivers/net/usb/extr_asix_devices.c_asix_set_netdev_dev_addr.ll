; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_asix_set_netdev_dev_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_asix_set_netdev_dev_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid hw address, using random\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32*)* @asix_set_netdev_dev_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asix_set_netdev_dev_addr(%struct.usbnet* %0, i32* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i64 @is_valid_ether_addr(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memcpy(i32 %13, i32* %14, i32 %15)
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @netdev_info(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @eth_hw_addr_random(%struct.TYPE_3__* %24)
  br label %26

26:                                               ; preds = %17, %8
  ret void
}

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
