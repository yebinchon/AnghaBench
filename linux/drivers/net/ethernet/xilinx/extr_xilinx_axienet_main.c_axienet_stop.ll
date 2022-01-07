; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.axienet_local = type { i32, i64, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"axienet_close()\0A\00", align 1
@XAE_OPTION_TXEN = common dso_local global i32 0, align 4
@XAE_OPTION_RXEN = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_CR_RUNSTOP_MASK = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ALL_MASK = common dso_local global i32 0, align 4
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@XAE_IE_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_SR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_SR_HALT_MASK = common dso_local global i32 0, align 4
@XAXIDMA_TX_SR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @axienet_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.axienet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %7)
  store %struct.axienet_local* %8, %struct.axienet_local** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %13 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @phylink_stop(i32 %14)
  %16 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %17 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @phylink_disconnect_phy(i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %22 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XAE_OPTION_TXEN, align 4
  %25 = load i32, i32* @XAE_OPTION_RXEN, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = call i32 @axienet_setoptions(%struct.net_device* %20, i32 %28)
  %30 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %31 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %32 = call i32 @axienet_dma_in32(%struct.axienet_local* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @XAXIDMA_CR_RUNSTOP_MASK, align 4
  %34 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %40 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @axienet_dma_out32(%struct.axienet_local* %39, i32 %40, i32 %41)
  %43 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %44 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %45 = call i32 @axienet_dma_in32(%struct.axienet_local* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @XAXIDMA_CR_RUNSTOP_MASK, align 4
  %47 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %53 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @axienet_dma_out32(%struct.axienet_local* %52, i32 %53, i32 %54)
  %56 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %57 = load i32, i32* @XAE_IE_OFFSET, align 4
  %58 = call i32 @axienet_iow(%struct.axienet_local* %56, i32 %57, i32 0)
  %59 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %60 = load i32, i32* @XAXIDMA_RX_SR_OFFSET, align 4
  %61 = call i32 @axienet_dma_in32(%struct.axienet_local* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %77, %1
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XAXIDMA_SR_HALT_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 5
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i1 [ false, %62 ], [ %69, %67 ]
  br i1 %71, label %72, label %80

72:                                               ; preds = %70
  %73 = call i32 @msleep(i32 20)
  %74 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %75 = load i32, i32* @XAXIDMA_RX_SR_OFFSET, align 4
  %76 = call i32 @axienet_dma_in32(%struct.axienet_local* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %62

80:                                               ; preds = %70
  %81 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %82 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %83 = call i32 @axienet_dma_in32(%struct.axienet_local* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %99, %80
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @XAXIDMA_SR_HALT_MASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 5
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ]
  br i1 %93, label %94, label %102

94:                                               ; preds = %92
  %95 = call i32 @msleep(i32 20)
  %96 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %97 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %98 = call i32 @axienet_dma_in32(%struct.axienet_local* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %84

102:                                              ; preds = %92
  %103 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %104 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %103, i32 0, i32 5
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %109 = call i32 @axienet_mdio_disable(%struct.axienet_local* %108)
  %110 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %111 = call i32 @__axienet_device_reset(%struct.axienet_local* %110)
  %112 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %113 = call i32 @axienet_mdio_enable(%struct.axienet_local* %112)
  %114 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %115 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %114, i32 0, i32 5
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %120 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %119, i32 0, i32 4
  %121 = call i32 @tasklet_kill(i32* %120)
  %122 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %123 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %102
  %127 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %128 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = call i32 @free_irq(i64 %129, %struct.net_device* %130)
  br label %132

132:                                              ; preds = %126, %102
  %133 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %134 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = call i32 @free_irq(i64 %135, %struct.net_device* %136)
  %138 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %139 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = call i32 @free_irq(i64 %140, %struct.net_device* %141)
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = call i32 @axienet_dma_bd_release(%struct.net_device* %143)
  ret i32 0
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @phylink_stop(i32) #1

declare dso_local i32 @phylink_disconnect_phy(i32) #1

declare dso_local i32 @axienet_setoptions(%struct.net_device*, i32) #1

declare dso_local i32 @axienet_dma_in32(%struct.axienet_local*, i32) #1

declare dso_local i32 @axienet_dma_out32(%struct.axienet_local*, i32, i32) #1

declare dso_local i32 @axienet_iow(%struct.axienet_local*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @axienet_mdio_disable(%struct.axienet_local*) #1

declare dso_local i32 @__axienet_device_reset(%struct.axienet_local*) #1

declare dso_local i32 @axienet_mdio_enable(%struct.axienet_local*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @axienet_dma_bd_release(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
