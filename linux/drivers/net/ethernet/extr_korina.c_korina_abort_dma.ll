; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_abort_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_abort_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dma_reg = type { i32, i32, i32, i32 }

@DMA_CHAN_RUN_BIT = common dso_local global i32 0, align 4
@DMA_STAT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dma_reg*)* @korina_abort_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @korina_abort_dma(%struct.net_device* %0, %struct.dma_reg* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dma_reg*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dma_reg* %1, %struct.dma_reg** %4, align 8
  %5 = load %struct.dma_reg*, %struct.dma_reg** %4, align 8
  %6 = getelementptr inbounds %struct.dma_reg, %struct.dma_reg* %5, i32 0, i32 3
  %7 = call i32 @readl(i32* %6)
  %8 = load i32, i32* @DMA_CHAN_RUN_BIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.dma_reg*, %struct.dma_reg** %4, align 8
  %13 = getelementptr inbounds %struct.dma_reg, %struct.dma_reg* %12, i32 0, i32 3
  %14 = call i32 @writel(i32 16, i32* %13)
  br label %15

15:                                               ; preds = %23, %11
  %16 = load %struct.dma_reg*, %struct.dma_reg** %4, align 8
  %17 = getelementptr inbounds %struct.dma_reg, %struct.dma_reg* %16, i32 0, i32 2
  %18 = call i32 @readl(i32* %17)
  %19 = load i32, i32* @DMA_STAT_HALT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @netif_trans_update(%struct.net_device* %24)
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.dma_reg*, %struct.dma_reg** %4, align 8
  %28 = getelementptr inbounds %struct.dma_reg, %struct.dma_reg* %27, i32 0, i32 2
  %29 = call i32 @writel(i32 0, i32* %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.dma_reg*, %struct.dma_reg** %4, align 8
  %32 = getelementptr inbounds %struct.dma_reg, %struct.dma_reg* %31, i32 0, i32 1
  %33 = call i32 @writel(i32 0, i32* %32)
  %34 = load %struct.dma_reg*, %struct.dma_reg** %4, align 8
  %35 = getelementptr inbounds %struct.dma_reg, %struct.dma_reg* %34, i32 0, i32 0
  %36 = call i32 @writel(i32 0, i32* %35)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
