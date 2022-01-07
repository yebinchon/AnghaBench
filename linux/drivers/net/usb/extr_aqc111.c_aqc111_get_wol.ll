; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.usbnet = type { %struct.aqc111_data* }
%struct.aqc111_data = type { i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@AQ_WOL_FLAG_MP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @aqc111_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqc111_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.aqc111_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.usbnet* @netdev_priv(%struct.net_device* %7)
  store %struct.usbnet* %8, %struct.usbnet** %5, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = load %struct.aqc111_data*, %struct.aqc111_data** %10, align 8
  store %struct.aqc111_data* %11, %struct.aqc111_data** %6, align 8
  %12 = load i32, i32* @WAKE_MAGIC, align 4
  %13 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %18 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AQ_WOL_FLAG_MP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @WAKE_MAGIC, align 4
  %25 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
