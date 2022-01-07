; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.macb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MID = common dso_local global i32 0, align 4
@MACB_REV_SIZE = common dso_local global i32 0, align 4
@MACB_GREGS_VERSION = common dso_local global i32 0, align 4
@NCR = common dso_local global i32 0, align 4
@NCFGR = common dso_local global i32 0, align 4
@NSR = common dso_local global i32 0, align 4
@TSR = common dso_local global i32 0, align 4
@RBQP = common dso_local global i32 0, align 4
@TBQP = common dso_local global i32 0, align 4
@RSR = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@MACB_CAPS_USRIO_DISABLED = common dso_local global i32 0, align 4
@USRIO = common dso_local global i32 0, align 4
@DMACFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @macb_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.macb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.macb* @netdev_priv(%struct.net_device* %11)
  store %struct.macb* %12, %struct.macb** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load %struct.macb*, %struct.macb** %7, align 8
  %16 = load i32, i32* @MID, align 4
  %17 = call i32 @macb_readl(%struct.macb* %15, i32 %16)
  %18 = load i32, i32* @MACB_REV_SIZE, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %17, %20
  %22 = load i32, i32* @MACB_GREGS_VERSION, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.macb*, %struct.macb** %7, align 8
  %27 = load %struct.macb*, %struct.macb** %7, align 8
  %28 = getelementptr inbounds %struct.macb, %struct.macb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @macb_tx_ring_wrap(%struct.macb* %26, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.macb*, %struct.macb** %7, align 8
  %35 = load %struct.macb*, %struct.macb** %7, align 8
  %36 = getelementptr inbounds %struct.macb, %struct.macb* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @macb_tx_ring_wrap(%struct.macb* %34, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.macb*, %struct.macb** %7, align 8
  %43 = load i32, i32* @NCR, align 4
  %44 = call i32 @macb_readl(%struct.macb* %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.macb*, %struct.macb** %7, align 8
  %48 = load i32, i32* @NCFGR, align 4
  %49 = call i32 @macb_or_gem_readl(%struct.macb* %47, i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.macb*, %struct.macb** %7, align 8
  %53 = load i32, i32* @NSR, align 4
  %54 = call i32 @macb_readl(%struct.macb* %52, i32 %53)
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.macb*, %struct.macb** %7, align 8
  %58 = load i32, i32* @TSR, align 4
  %59 = call i32 @macb_readl(%struct.macb* %57, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.macb*, %struct.macb** %7, align 8
  %63 = load i32, i32* @RBQP, align 4
  %64 = call i32 @macb_readl(%struct.macb* %62, i32 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.macb*, %struct.macb** %7, align 8
  %68 = load i32, i32* @TBQP, align 4
  %69 = call i32 @macb_readl(%struct.macb* %67, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.macb*, %struct.macb** %7, align 8
  %73 = load i32, i32* @RSR, align 4
  %74 = call i32 @macb_readl(%struct.macb* %72, i32 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.macb*, %struct.macb** %7, align 8
  %78 = load i32, i32* @IMR, align 4
  %79 = call i32 @macb_readl(%struct.macb* %77, i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 7
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 9
  store i32 %85, i32* %87, align 4
  %88 = load %struct.macb*, %struct.macb** %7, align 8
  %89 = getelementptr inbounds %struct.macb, %struct.macb* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 0
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @macb_tx_dma(%struct.TYPE_2__* %91, i32 %92)
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.macb*, %struct.macb** %7, align 8
  %97 = getelementptr inbounds %struct.macb, %struct.macb* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 0
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @macb_tx_dma(%struct.TYPE_2__* %99, i32 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 11
  store i32 %101, i32* %103, align 4
  %104 = load %struct.macb*, %struct.macb** %7, align 8
  %105 = getelementptr inbounds %struct.macb, %struct.macb* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MACB_CAPS_USRIO_DISABLED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %3
  %111 = load %struct.macb*, %struct.macb** %7, align 8
  %112 = load i32, i32* @USRIO, align 4
  %113 = call i32 @macb_or_gem_readl(%struct.macb* %111, i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 12
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %3
  %117 = load %struct.macb*, %struct.macb** %7, align 8
  %118 = call i64 @macb_is_gem(%struct.macb* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load %struct.macb*, %struct.macb** %7, align 8
  %122 = load i32, i32* @DMACFG, align 4
  %123 = call i32 @gem_readl(%struct.macb* %121, i32 %122)
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 13
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %116
  ret void
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @macb_tx_ring_wrap(%struct.macb*, i32) #1

declare dso_local i32 @macb_or_gem_readl(%struct.macb*, i32) #1

declare dso_local i32 @macb_tx_dma(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @macb_is_gem(%struct.macb*) #1

declare dso_local i32 @gem_readl(%struct.macb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
