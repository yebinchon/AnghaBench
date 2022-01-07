; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_skb_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_skb_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.rhine_skb_dma = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rhine_private = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Rx DMA mapping failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rhine_skb_dma*)* @rhine_skb_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rhine_skb_dma_init(%struct.net_device* %0, %struct.rhine_skb_dma* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rhine_skb_dma*, align 8
  %6 = alloca %struct.rhine_private*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rhine_skb_dma* %1, %struct.rhine_skb_dma** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %9)
  store %struct.rhine_private* %10, %struct.rhine_private** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %16 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.TYPE_5__* @netdev_alloc_skb(%struct.net_device* %18, i32 %19)
  %21 = load %struct.rhine_skb_dma*, %struct.rhine_skb_dma** %5, align 8
  %22 = getelementptr inbounds %struct.rhine_skb_dma, %struct.rhine_skb_dma* %21, i32 0, i32 0
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.rhine_skb_dma*, %struct.rhine_skb_dma** %5, align 8
  %24 = getelementptr inbounds %struct.rhine_skb_dma, %struct.rhine_skb_dma* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load %struct.rhine_skb_dma*, %struct.rhine_skb_dma** %5, align 8
  %33 = getelementptr inbounds %struct.rhine_skb_dma, %struct.rhine_skb_dma* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_map_single(%struct.device* %31, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.rhine_skb_dma*, %struct.rhine_skb_dma** %5, align 8
  %41 = getelementptr inbounds %struct.rhine_skb_dma, %struct.rhine_skb_dma* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.rhine_skb_dma*, %struct.rhine_skb_dma** %5, align 8
  %44 = getelementptr inbounds %struct.rhine_skb_dma, %struct.rhine_skb_dma* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_mapping_error(%struct.device* %42, i32 %45)
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %30
  %50 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %51 = load i32, i32* @drv, align 4
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netif_err(%struct.rhine_private* %50, i32 %51, %struct.net_device* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.rhine_skb_dma*, %struct.rhine_skb_dma** %5, align 8
  %55 = getelementptr inbounds %struct.rhine_skb_dma, %struct.rhine_skb_dma* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.TYPE_5__* %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %49, %27
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_5__* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @netif_err(%struct.rhine_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
