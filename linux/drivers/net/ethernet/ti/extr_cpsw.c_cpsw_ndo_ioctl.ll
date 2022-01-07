; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @cpsw_ndo_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpsw_priv*, align 8
  %9 = alloca %struct.cpsw_common*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.cpsw_priv* %12, %struct.cpsw_priv** %8, align 8
  %13 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %14 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %13, i32 0, i32 0
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %14, align 8
  store %struct.cpsw_common* %15, %struct.cpsw_common** %9, align 8
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %17 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %18 = call i32 @cpsw_slave_index(%struct.cpsw_common* %16, %struct.cpsw_priv* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_running(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %35 [
    i32 128, label %27
    i32 129, label %31
  ]

27:                                               ; preds = %25
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %30 = call i32 @cpsw_hwtstamp_set(%struct.net_device* %28, %struct.ifreq* %29)
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %34 = call i32 @cpsw_hwtstamp_get(%struct.net_device* %32, %struct.ifreq* %33)
  store i32 %34, i32* %4, align 4
  br label %60

35:                                               ; preds = %25
  %36 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %37 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %60

48:                                               ; preds = %35
  %49 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %50 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @phy_mii_ioctl(i32 %56, %struct.ifreq* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %48, %45, %31, %27, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @cpsw_hwtstamp_set(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @cpsw_hwtstamp_get(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @phy_mii_ioctl(i32, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
