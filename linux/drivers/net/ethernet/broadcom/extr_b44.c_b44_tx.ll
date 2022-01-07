; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, %struct.TYPE_2__*, %struct.ring_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ring_info = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i64 }

@B44_DMATX_STAT = common dso_local global i32 0, align 4
@DMATX_STAT_CDMASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@B44_TX_WAKEUP_THRESH = common dso_local global i64 0, align 8
@B44_GPTIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_tx(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ring_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.b44*, %struct.b44** %2, align 8
  %10 = load i32, i32* @B44_DMATX_STAT, align 4
  %11 = call i32 @br32(%struct.b44* %9, i32 %10)
  %12 = load i32, i32* @DMATX_STAT_CDMASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.b44*, %struct.b44** %2, align 8
  %19 = getelementptr inbounds %struct.b44, %struct.b44* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %65, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  %26 = load %struct.b44*, %struct.b44** %2, align 8
  %27 = getelementptr inbounds %struct.b44, %struct.b44* %26, i32 0, i32 3
  %28 = load %struct.ring_info*, %struct.ring_info** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %28, i64 %30
  store %struct.ring_info* %31, %struct.ring_info** %7, align 8
  %32 = load %struct.ring_info*, %struct.ring_info** %7, align 8
  %33 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %8, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = icmp eq %struct.sk_buff* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.b44*, %struct.b44** %2, align 8
  %40 = getelementptr inbounds %struct.b44, %struct.b44* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ring_info*, %struct.ring_info** %7, align 8
  %45 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i32 @dma_unmap_single(i32 %43, i32 %46, i64 %49, i32 %50)
  %52 = load %struct.ring_info*, %struct.ring_info** %7, align 8
  %53 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %52, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %25
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @NEXT_TX(i32 %66)
  store i32 %67, i32* %4, align 4
  br label %21

68:                                               ; preds = %21
  %69 = load %struct.b44*, %struct.b44** %2, align 8
  %70 = getelementptr inbounds %struct.b44, %struct.b44* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @netdev_completed_queue(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.b44*, %struct.b44** %2, align 8
  %77 = getelementptr inbounds %struct.b44, %struct.b44* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.b44*, %struct.b44** %2, align 8
  %79 = getelementptr inbounds %struct.b44, %struct.b44* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @netif_queue_stopped(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %68
  %84 = load %struct.b44*, %struct.b44** %2, align 8
  %85 = call i64 @TX_BUFFS_AVAIL(%struct.b44* %84)
  %86 = load i64, i64* @B44_TX_WAKEUP_THRESH, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.b44*, %struct.b44** %2, align 8
  %90 = getelementptr inbounds %struct.b44, %struct.b44* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @netif_wake_queue(i32 %91)
  br label %93

93:                                               ; preds = %88, %83, %68
  %94 = load %struct.b44*, %struct.b44** %2, align 8
  %95 = load i32, i32* @B44_GPTIMER, align 4
  %96 = call i32 @bw32(%struct.b44* %94, i32 %95, i32 0)
  ret void
}

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @netdev_completed_queue(i32, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.b44*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
