; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ifreq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ravb_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
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
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %20 = icmp ne %struct.phy_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %34 [
    i32 129, label %26
    i32 128, label %30
  ]

26:                                               ; preds = %24
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %29 = call i32 @ravb_hwtstamp_get(%struct.net_device* %27, %struct.ifreq* %28)
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %33 = call i32 @ravb_hwtstamp_set(%struct.net_device* %31, %struct.ifreq* %32)
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %36 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @phy_mii_ioctl(%struct.phy_device* %35, %struct.ifreq* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %30, %26, %21, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ravb_hwtstamp_get(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @ravb_hwtstamp_set(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
