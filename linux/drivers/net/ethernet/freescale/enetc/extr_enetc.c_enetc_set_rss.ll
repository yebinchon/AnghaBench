; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.enetc_hw }
%struct.enetc_hw = type { i32 }

@ENETC_SIRBGCR = common dso_local global i32 0, align 4
@ENETC_SIMR = common dso_local global i32 0, align 4
@ENETC_SIMR_RSSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @enetc_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_set_rss(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.enetc_ndev_priv*, align 8
  %6 = alloca %struct.enetc_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.enetc_ndev_priv* %9, %struct.enetc_ndev_priv** %5, align 8
  %10 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.enetc_hw* %13, %struct.enetc_hw** %6, align 8
  %14 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %15 = load i32, i32* @ENETC_SIRBGCR, align 4
  %16 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %17 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @enetc_wr(%struct.enetc_hw* %14, i32 %15, i32 %18)
  %20 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %21 = load i32, i32* @ENETC_SIMR, align 4
  %22 = call i32 @enetc_rd(%struct.enetc_hw* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @ENETC_SIMR_RSSE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @ENETC_SIMR_RSSE, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %37 = load i32, i32* @ENETC_SIMR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @enetc_wr(%struct.enetc_hw* %36, i32 %37, i32 %38)
  ret i32 0
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_wr(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @enetc_rd(%struct.enetc_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
