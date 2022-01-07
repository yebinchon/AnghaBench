; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_gregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_gregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.stmmac_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ETHTOOL_DMA_OFFSET = common dso_local global i64 0, align 8
@DMA_BUS_MODE = common dso_local global i32 0, align 4
@NUM_DWMAC1000_DMA_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @stmmac_ethtool_gregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_ethtool_gregs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stmmac_priv*, align 8
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.stmmac_priv* %10, %struct.stmmac_priv** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @stmmac_dump_mac_regs(%struct.stmmac_priv* %13, i32 %16, i32* %17)
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %20 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %21 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @stmmac_dump_dma_regs(%struct.stmmac_priv* %19, i32 %22, i32* %23)
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %3
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* @ETHTOOL_DMA_OFFSET, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @DMA_BUS_MODE, align 4
  %37 = sdiv i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* @NUM_DWMAC1000_DMA_REGS, align 4
  %41 = mul nsw i32 %40, 4
  %42 = call i32 @memcpy(i32* %34, i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %31, %3
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_dump_mac_regs(%struct.stmmac_priv*, i32, i32*) #1

declare dso_local i32 @stmmac_dump_dma_regs(%struct.stmmac_priv*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
