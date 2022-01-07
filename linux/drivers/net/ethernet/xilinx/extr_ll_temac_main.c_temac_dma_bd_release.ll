; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_dma_bd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_dma_bd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.temac_local = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32*, i32 (%struct.temac_local*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@DMA_CONTROL_REG = common dso_local global i32 0, align 4
@DMA_CONTROL_RST = common dso_local global i32 0, align 4
@RX_BD_NUM = common dso_local global i32 0, align 4
@XTE_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @temac_dma_bd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @temac_dma_bd_release(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.temac_local* @netdev_priv(%struct.net_device* %5)
  store %struct.temac_local* %6, %struct.temac_local** %3, align 8
  %7 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %8 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %7, i32 0, i32 5
  %9 = load i32 (%struct.temac_local*, i32, i32)*, i32 (%struct.temac_local*, i32, i32)** %8, align 8
  %10 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %11 = load i32, i32* @DMA_CONTROL_REG, align 4
  %12 = load i32, i32* @DMA_CONTROL_RST, align 4
  %13 = call i32 %9(%struct.temac_local* %10, i32 %11, i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RX_BD_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %20 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %56

28:                                               ; preds = %18
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %34 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @XTE_MAX_JUMBO_FRAME_SIZE, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32 %32, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %45 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_kfree_skb(i32 %50)
  br label %52

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %14

56:                                               ; preds = %27, %14
  %57 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %58 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RX_BD_NUM, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %71 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %74 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dma_free_coherent(i32 %65, i32 %69, %struct.TYPE_4__* %72, i32 %75)
  br label %77

77:                                               ; preds = %61, %56
  %78 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %79 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TX_BD_NUM, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = trunc i64 %89 to i32
  %91 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %92 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %95 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dma_free_coherent(i32 %86, i32 %90, %struct.TYPE_4__* %93, i32 %96)
  br label %98

98:                                               ; preds = %82, %77
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
