; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.stmmac_priv = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @stmmac_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stmmac_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.stmmac_priv* %11, %struct.stmmac_priv** %8, align 8
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %37 [
    i32 131, label %22
    i32 130, label %22
    i32 128, label %22
    i32 129, label %29
    i32 132, label %33
  ]

22:                                               ; preds = %20, %20, %20
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @phylink_mii_ioctl(i32 %25, %struct.ifreq* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %38

29:                                               ; preds = %20
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %32 = call i32 @stmmac_hwtstamp_set(%struct.net_device* %30, %struct.ifreq* %31)
  store i32 %32, i32* %9, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %36 = call i32 @stmmac_hwtstamp_get(%struct.net_device* %34, %struct.ifreq* %35)
  store i32 %36, i32* %9, align 4
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %33, %29, %22
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @phylink_mii_ioctl(i32, %struct.ifreq*, i32) #1

declare dso_local i32 @stmmac_hwtstamp_set(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @stmmac_hwtstamp_get(%struct.net_device*, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
