; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.fec_enet_private = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SIOCSHWTSTAMP = common dso_local global i32 0, align 4
@SIOCGHWTSTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @fec_enet_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fec_enet_private*, align 8
  %9 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %10)
  store %struct.fec_enet_private* %11, %struct.fec_enet_private** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %23 = icmp ne %struct.phy_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %21
  %28 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %29 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SIOCSHWTSTAMP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %39 = call i32 @fec_ptp_set(%struct.net_device* %37, %struct.ifreq* %38)
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SIOCGHWTSTAMP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %47 = call i32 @fec_ptp_get(%struct.net_device* %45, %struct.ifreq* %46)
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %51 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @phy_mii_ioctl(%struct.phy_device* %50, %struct.ifreq* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %44, %36, %24, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @fec_ptp_set(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @fec_ptp_get(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
