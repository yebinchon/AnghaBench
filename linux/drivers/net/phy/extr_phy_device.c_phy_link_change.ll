; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 (%struct.net_device*)*, %struct.net_device.0* }
%struct.net_device = type opaque
%struct.net_device.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, i32, i32)* @phy_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_link_change(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device.0*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 1
  %10 = load %struct.net_device.0*, %struct.net_device.0** %9, align 8
  store %struct.net_device.0* %10, %struct.net_device.0** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.net_device.0*, %struct.net_device.0** %7, align 8
  %18 = call i32 @netif_carrier_on(%struct.net_device.0* %17)
  br label %22

19:                                               ; preds = %13
  %20 = load %struct.net_device.0*, %struct.net_device.0** %7, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device.0* %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %25, align 8
  %27 = load %struct.net_device.0*, %struct.net_device.0** %7, align 8
  %28 = bitcast %struct.net_device.0* %27 to %struct.net_device*
  %29 = call i32 %26(%struct.net_device* %28)
  ret void
}

declare dso_local i32 @netif_carrier_on(%struct.net_device.0*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
