; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_start_xmit_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_start_xmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.axienet_local = type { i64, i64, %struct.axidma_bd* }
%struct.axidma_bd = type { i32, i32, i32*, i64, i64, i64, i64, i32 }

@XAXIDMA_BD_STS_COMPLETE_MASK = common dso_local global i32 0, align 4
@XAXIDMA_BD_CTRL_LENGTH_MASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@XAXIDMA_BD_STS_ACTUAL_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @axienet_start_xmit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_start_xmit_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.axienet_local*, align 8
  %6 = alloca %struct.axidma_bd*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %8)
  store %struct.axienet_local* %9, %struct.axienet_local** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %11 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %10, i32 0, i32 2
  %12 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %13 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %14 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %12, i64 %15
  store %struct.axidma_bd* %16, %struct.axidma_bd** %6, align 8
  %17 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %18 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %81, %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @XAXIDMA_BD_STS_COMPLETE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %92

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %31 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %34 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XAXIDMA_BD_CTRL_LENGTH_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(i32 %29, i32 %32, i32 %37, i32 %38)
  %40 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %41 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %46 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @dev_consume_skb_irq(i32* %47)
  br label %49

49:                                               ; preds = %44, %25
  %50 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %51 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %53 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %55 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %57 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %59 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %61 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @XAXIDMA_BD_STS_ACTUAL_LEN_MASK, align 4
  %64 = and i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %3, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %4, align 8
  %70 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %71 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %75 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %49
  %79 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %80 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %49
  %82 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %83 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %82, i32 0, i32 2
  %84 = load %struct.axidma_bd*, %struct.axidma_bd** %83, align 8
  %85 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %86 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %84, i64 %87
  store %struct.axidma_bd* %88, %struct.axidma_bd** %6, align 8
  %89 = load %struct.axidma_bd*, %struct.axidma_bd** %6, align 8
  %90 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %7, align 4
  br label %20

92:                                               ; preds = %20
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %93
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load i64, i64* %3, align 8
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %101
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = call i32 (...) @smp_mb()
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = call i32 @netif_wake_queue(%struct.net_device* %110)
  ret void
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
