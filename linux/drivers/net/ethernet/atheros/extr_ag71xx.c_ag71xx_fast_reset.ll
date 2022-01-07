; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_fast_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_fast_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__, %struct.net_device*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.net_device = type { i32, i32 }

@AG71XX_REG_MII_CFG = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_fast_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_fast_reset(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %6 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %7 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %10 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %9)
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %13 = call i32 @ag71xx_rr(%struct.ag71xx* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %16 = call i32 @ag71xx_rr(%struct.ag71xx* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %18 = call i32 @ag71xx_tx_packets(%struct.ag71xx* %17, i32 1)
  %19 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %20 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @reset_control_assert(i32 %21)
  %23 = call i32 @usleep_range(i32 10, i32 20)
  %24 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %25 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @reset_control_deassert(i32 %26)
  %28 = call i32 @usleep_range(i32 10, i32 20)
  %29 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %30 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %29)
  %31 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %32 = call i32 @ag71xx_hw_setup(%struct.ag71xx* %31)
  %33 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %34 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %37 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %40 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %39, i32 0, i32 1
  %41 = load %struct.net_device*, %struct.net_device** %40, align 8
  %42 = call i32 @netdev_reset_queue(%struct.net_device* %41)
  %43 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %44 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %45 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %46 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %45, i32 0, i32 1
  %47 = load %struct.net_device*, %struct.net_device** %46, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ag71xx_max_frame_len(i32 %49)
  %51 = call i32 @ag71xx_wr(%struct.ag71xx* %43, i32 %44, i32 %50)
  %52 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %53 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ag71xx_wr(%struct.ag71xx* %52, i32 %53, i32 %54)
  %56 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %57 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %58 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %59 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ag71xx_wr(%struct.ag71xx* %56, i32 %57, i32 %61)
  %63 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %64 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ag71xx_wr(%struct.ag71xx* %63, i32 %64, i32 %65)
  %67 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ag71xx_hw_set_macaddr(%struct.ag71xx* %67, i32 %70)
  ret void
}

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_tx_packets(%struct.ag71xx*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_hw_setup(%struct.ag71xx*) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_max_frame_len(i32) #1

declare dso_local i32 @ag71xx_hw_set_macaddr(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
