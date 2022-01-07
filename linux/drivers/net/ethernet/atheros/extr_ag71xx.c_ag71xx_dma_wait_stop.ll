; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_dma_wait_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_dma_wait_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.net_device* }
%struct.net_device = type { i32 }

@AG71XX_DMA_RETRY = common dso_local global i32 0, align 4
@AG71XX_DMA_DELAY = common dso_local global i32 0, align 4
@AG71XX_REG_RX_CTRL = common dso_local global i32 0, align 4
@RX_CTRL_RXE = common dso_local global i32 0, align 4
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@TX_CTRL_TXE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DMA stop operation timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_dma_wait_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_dma_wait_stop(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %7 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %8 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AG71XX_DMA_RETRY, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, i32* @AG71XX_DMA_DELAY, align 4
  %16 = call i32 @mdelay(i32 %15)
  %17 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %18 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %19 = call i32 @ag71xx_rr(%struct.ag71xx* %17, i32 %18)
  %20 = load i32, i32* @RX_CTRL_RXE, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %23 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %24 = call i32 @ag71xx_rr(%struct.ag71xx* %22, i32 %23)
  %25 = load i32, i32* @TX_CTRL_TXE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %42

33:                                               ; preds = %29, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %39 = load i32, i32* @hw, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @netif_err(%struct.ag71xx* %38, i32 %39, %struct.net_device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @netif_err(%struct.ag71xx*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
