; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_fini_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_fini_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32, i64, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.netdev_queue = type { i32 }

@DESC_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @bcmgenet_fini_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_fini_dma(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca %struct.netdev_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  %5 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %6 = call i32 @bcmgenet_fini_rx_napi(%struct.bcmgenet_priv* %5)
  %7 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %8 = call i32 @bcmgenet_fini_tx_napi(%struct.bcmgenet_priv* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %12 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %17 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %16, i32 0, i32 6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @bcmgenet_free_tx_cb(i32* %19, i64 %25)
  %27 = call i32 @dev_kfree_skb(i32 %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %55, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %35 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %34, i32 0, i32 5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %45 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %43, i32 %51)
  store %struct.netdev_queue* %52, %struct.netdev_queue** %3, align 8
  %53 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %54 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %53)
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %60 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %63 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* @DESC_INDEX, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %61, i32 %68)
  store %struct.netdev_queue* %69, %struct.netdev_queue** %3, align 8
  %70 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %71 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %70)
  %72 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %73 = call i32 @bcmgenet_free_rx_buffers(%struct.bcmgenet_priv* %72)
  %74 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %75 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @kfree(i64 %76)
  %78 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %79 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @kfree(i64 %80)
  ret void
}

declare dso_local i32 @bcmgenet_fini_rx_napi(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_fini_tx_napi(%struct.bcmgenet_priv*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @bcmgenet_free_tx_cb(i32*, i64) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

declare dso_local i32 @bcmgenet_free_rx_buffers(%struct.bcmgenet_priv*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
