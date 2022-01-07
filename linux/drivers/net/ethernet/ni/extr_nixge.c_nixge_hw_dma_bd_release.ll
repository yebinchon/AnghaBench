; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_hw_dma_bd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_hw_dma_bd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nixge_priv = type { i32, i32*, i64, i32, i32* }
%struct.sk_buff = type { i32 }

@RX_BD_NUM = common dso_local global i32 0, align 4
@phys = common dso_local global i32 0, align 4
@NIXGE_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@sw_id_offset = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nixge_hw_dma_bd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nixge_hw_dma_bd_release(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nixge_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nixge_priv* %8, %struct.nixge_priv** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RX_BD_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %15 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* @phys, align 4
  %21 = call i64 @nixge_hw_dma_bd_get_addr(i32* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @NIXGE_MAX_JUMBO_FRAME_SIZE, align 4
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %25, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %31 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @sw_id_offset, align 4
  %37 = call i64 @nixge_hw_dma_bd_get_addr(i32* %35, i32 %36)
  %38 = inttoptr i64 %37 to %struct.sk_buff*
  store %struct.sk_buff* %38, %struct.sk_buff** %5, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %13
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %9

44:                                               ; preds = %9
  %45 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %46 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RX_BD_NUM, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %59 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %62 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dma_free_coherent(i32 %53, i32 %57, i32* %60, i32 %63)
  br label %65

65:                                               ; preds = %49, %44
  %66 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %67 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %76 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @devm_kfree(i32 %74, i64 %77)
  br label %79

79:                                               ; preds = %70, %65
  %80 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %81 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TX_BD_NUM, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = trunc i64 %91 to i32
  %93 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %94 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %97 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dma_free_coherent(i32 %88, i32 %92, i32* %95, i32 %98)
  br label %100

100:                                              ; preds = %84, %79
  ret void
}

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nixge_hw_dma_bd_get_addr(i32*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @devm_kfree(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
