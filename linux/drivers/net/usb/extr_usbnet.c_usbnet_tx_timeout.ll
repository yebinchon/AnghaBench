; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.usbnet*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbnet*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.usbnet* @netdev_priv(%struct.net_device* %4)
  store %struct.usbnet* %5, %struct.usbnet** %3, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 2
  %9 = call i32 @unlink_urbs(%struct.usbnet* %6, i32* %8)
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 1
  %12 = call i32 @tasklet_schedule(i32* %11)
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %16, align 8
  %18 = icmp ne i32 (%struct.usbnet*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %23, align 8
  %25 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %26 = call i32 %24(%struct.usbnet* %25)
  br label %27

27:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unlink_urbs(%struct.usbnet*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
