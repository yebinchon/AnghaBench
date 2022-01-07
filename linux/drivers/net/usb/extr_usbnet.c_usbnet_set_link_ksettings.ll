; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }
%struct.usbnet = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.usbnet*)* }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.usbnet* @netdev_priv(%struct.net_device* %8)
  store %struct.usbnet* %9, %struct.usbnet** %6, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %22 = call i32 @mii_ethtool_set_link_ksettings(%struct.TYPE_4__* %20, %struct.ethtool_link_ksettings* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %26, align 8
  %28 = icmp ne i32 (%struct.usbnet*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %33, align 8
  %35 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %36 = call i32 %34(%struct.usbnet* %35)
  br label %37

37:                                               ; preds = %29, %18
  %38 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %39 = call i32 @usbnet_update_max_qlen(%struct.usbnet* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_ethtool_set_link_ksettings(%struct.TYPE_4__*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @usbnet_update_max_qlen(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
