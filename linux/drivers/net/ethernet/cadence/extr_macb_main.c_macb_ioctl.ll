; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.macb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*)* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @macb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca %struct.macb*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.macb* @netdev_priv(%struct.net_device* %13)
  store %struct.macb* %14, %struct.macb** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %23 = icmp ne %struct.phy_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %21
  %28 = load %struct.macb*, %struct.macb** %9, align 8
  %29 = getelementptr inbounds %struct.macb, %struct.macb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %34 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @phy_mii_ioctl(%struct.phy_device* %33, %struct.ifreq* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %63

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %58 [
    i32 128, label %39
    i32 129, label %49
  ]

39:                                               ; preds = %37
  %40 = load %struct.macb*, %struct.macb** %9, align 8
  %41 = getelementptr inbounds %struct.macb, %struct.macb* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)** %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %44(%struct.net_device* %45, %struct.ifreq* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %37
  %50 = load %struct.macb*, %struct.macb** %9, align 8
  %51 = getelementptr inbounds %struct.macb, %struct.macb* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.net_device*, %struct.ifreq*)*, i32 (%struct.net_device*, %struct.ifreq*)** %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %57 = call i32 %54(%struct.net_device* %55, %struct.ifreq* %56)
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %37
  %59 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %60 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @phy_mii_ioctl(%struct.phy_device* %59, %struct.ifreq* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %49, %39, %32, %24, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
