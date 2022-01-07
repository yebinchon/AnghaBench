; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ifreq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIOCSHWTSTAMP = common dso_local global i32 0, align 4
@SIOCGHWTSTAMP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @gfar_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SIOCSHWTSTAMP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %25 = call i32 @gfar_hwtstamp_set(%struct.net_device* %23, %struct.ifreq* %24)
  store i32 %25, i32* %4, align 4
  br label %45

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SIOCGHWTSTAMP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %33 = call i32 @gfar_hwtstamp_get(%struct.net_device* %31, %struct.ifreq* %32)
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %26
  %35 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %36 = icmp ne %struct.phy_device* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %34
  %41 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %42 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @phy_mii_ioctl(%struct.phy_device* %41, %struct.ifreq* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %37, %30, %22, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @gfar_hwtstamp_set(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @gfar_hwtstamp_get(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
