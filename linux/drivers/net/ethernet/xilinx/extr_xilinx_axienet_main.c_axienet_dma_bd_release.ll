; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_dma_bd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_dma_bd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.axienet_local = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @axienet_dma_bd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_dma_bd_release(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.axienet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %5)
  store %struct.axienet_local* %6, %struct.axienet_local** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %10 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %19 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %27 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %30 = call i32 @dma_unmap_single(i32 %17, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %32 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %31, i32 0, i32 5
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_kfree_skb(i32 %38)
  br label %40

40:                                               ; preds = %13
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %7

43:                                               ; preds = %7
  %44 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %45 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %44, i32 0, i32 5
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %54 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %60 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %59, i32 0, i32 5
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %63 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dma_free_coherent(i32 %52, i32 %58, %struct.TYPE_4__* %61, i32 %64)
  br label %66

66:                                               ; preds = %48, %43
  %67 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %68 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %77 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 8, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %83 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %86 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dma_free_coherent(i32 %75, i32 %81, %struct.TYPE_4__* %84, i32 %87)
  br label %89

89:                                               ; preds = %71, %66
  ret void
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
