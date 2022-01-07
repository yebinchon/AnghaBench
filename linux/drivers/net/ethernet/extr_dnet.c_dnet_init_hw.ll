; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DNET_INTERNAL_RXTX_CONTROL_REG = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@DNET_INTERNAL_RXTX_CONTROL_ENPROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@DNET_INTERNAL_RXTX_CONTROL_RXMULTICAST = common dso_local global i32 0, align 4
@DNET_INTERNAL_RXTX_CONTROL_RXPAUSE = common dso_local global i32 0, align 4
@DNET_INTERNAL_RXTX_CONTROL_RXBROADCAST = common dso_local global i32 0, align 4
@DNET_INTERNAL_RXTX_CONTROL_DROPCONTROL = common dso_local global i32 0, align 4
@DNET_INTERNAL_RXTX_CONTROL_DISCFXFCS = common dso_local global i32 0, align 4
@INTR_SRC = common dso_local global i32 0, align 4
@DNET_INTR_ENB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@DNET_INTR_ENB_RX_SUMMARY = common dso_local global i32 0, align 4
@DNET_INTR_ENB_TX_SUMMARY = common dso_local global i32 0, align 4
@DNET_INTR_ENB_RX_FIFOERR = common dso_local global i32 0, align 4
@DNET_INTR_ENB_RX_ERROR = common dso_local global i32 0, align 4
@DNET_INTR_ENB_RX_FIFOFULL = common dso_local global i32 0, align 4
@DNET_INTR_ENB_TX_FIFOFULL = common dso_local global i32 0, align 4
@DNET_INTR_ENB_TX_DISCFRM = common dso_local global i32 0, align 4
@DNET_INTR_ENB_RX_PKTRDY = common dso_local global i32 0, align 4
@INTR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dnet*)* @dnet_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnet_init_hw(%struct.dnet* %0) #0 {
  %2 = alloca %struct.dnet*, align 8
  %3 = alloca i32, align 4
  store %struct.dnet* %0, %struct.dnet** %2, align 8
  %4 = load %struct.dnet*, %struct.dnet** %2, align 8
  %5 = call i32 @dnet_reset_hw(%struct.dnet* %4)
  %6 = load %struct.dnet*, %struct.dnet** %2, align 8
  %7 = call i32 @__dnet_set_hwaddr(%struct.dnet* %6)
  %8 = load %struct.dnet*, %struct.dnet** %2, align 8
  %9 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_REG, align 4
  %10 = call i32 @dnet_readw_mac(%struct.dnet* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dnet*, %struct.dnet** %2, align 8
  %12 = getelementptr inbounds %struct.dnet, %struct.dnet* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_PROMISC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_ENPROMISC, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.dnet*, %struct.dnet** %2, align 8
  %25 = getelementptr inbounds %struct.dnet, %struct.dnet* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_BROADCAST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_RXMULTICAST, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_RXPAUSE, align 4
  %38 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_RXBROADCAST, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_DROPCONTROL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_DISCFXFCS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.dnet*, %struct.dnet** %2, align 8
  %47 = load i32, i32* @DNET_INTERNAL_RXTX_CONTROL_REG, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @dnet_writew_mac(%struct.dnet* %46, i32 %47, i32 %48)
  %50 = load %struct.dnet*, %struct.dnet** %2, align 8
  %51 = load i32, i32* @INTR_SRC, align 4
  %52 = call i32 @dnet_readl(%struct.dnet* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.dnet*, %struct.dnet** %2, align 8
  %54 = load i32, i32* @DNET_INTR_ENB_GLOBAL_ENABLE, align 4
  %55 = load i32, i32* @DNET_INTR_ENB_RX_SUMMARY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @DNET_INTR_ENB_TX_SUMMARY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @DNET_INTR_ENB_RX_FIFOERR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DNET_INTR_ENB_RX_ERROR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @DNET_INTR_ENB_RX_FIFOFULL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @DNET_INTR_ENB_TX_FIFOFULL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @DNET_INTR_ENB_TX_DISCFRM, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DNET_INTR_ENB_RX_PKTRDY, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @INTR_ENB, align 4
  %72 = call i32 @dnet_writel(%struct.dnet* %53, i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @dnet_reset_hw(%struct.dnet*) #1

declare dso_local i32 @__dnet_set_hwaddr(%struct.dnet*) #1

declare dso_local i32 @dnet_readw_mac(%struct.dnet*, i32) #1

declare dso_local i32 @dnet_writew_mac(%struct.dnet*, i32, i32) #1

declare dso_local i32 @dnet_readl(%struct.dnet*, i32) #1

declare dso_local i32 @dnet_writel(%struct.dnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
