; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.bcm_enet_priv = type { i64 }
%struct.mii_if_info = type { i32, i32, i64, i32, i32, %struct.net_device* }

@ENODEV = common dso_local global i32 0, align 4
@bcm_enet_mdio_read_mii = common dso_local global i32 0, align 4
@bcm_enet_mdio_write_mii = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bcm_enet_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm_enet_priv*, align 8
  %9 = alloca %struct.mii_if_info, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.bcm_enet_priv* %11, %struct.bcm_enet_priv** %8, align 8
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %8, align 8
  %13 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %45

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @phy_mii_ioctl(i32 %27, %struct.ifreq* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %3
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %9, i32 0, i32 5
  store %struct.net_device* %32, %struct.net_device** %33, align 8
  %34 = load i32, i32* @bcm_enet_mdio_read_mii, align 4
  %35 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %9, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @bcm_enet_mdio_write_mii, align 4
  %37 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %9, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %9, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %9, i32 0, i32 0
  store i32 63, i32* %39, align 8
  %40 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %9, i32 0, i32 1
  store i32 31, i32* %40, align 4
  %41 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %42 = call i32 @if_mii(%struct.ifreq* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @generic_mii_ioctl(%struct.mii_if_info* %9, i32 %42, i32 %43, i32* null)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %31, %24, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_mii_ioctl(i32, %struct.ifreq*, i32) #1

declare dso_local i32 @generic_mii_ioctl(%struct.mii_if_info*, i32, i32, i32*) #1

declare dso_local i32 @if_mii(%struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
