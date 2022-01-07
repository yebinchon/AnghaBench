; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.stmmac_priv = type { i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @stmmac_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.stmmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.stmmac_priv* %7, %struct.stmmac_priv** %5, align 8
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %32 = call i32 @stmmac_riwt2usec(i32 %30, %struct.stmmac_priv* %31)
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %22, %2
  ret i32 0
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_riwt2usec(i32, %struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
