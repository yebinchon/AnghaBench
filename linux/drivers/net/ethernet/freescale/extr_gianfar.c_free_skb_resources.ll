; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_skb_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_skb_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i32, i32, i32, i32, %struct.gfar_priv_tx_q**, i32, %struct.gfar_priv_rx_q** }
%struct.gfar_priv_tx_q = type { i32, i32, i64, i32, i32 }
%struct.gfar_priv_rx_q = type { i64 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_private*)* @free_skb_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_skb_resources(%struct.gfar_private* %0) #0 {
  %2 = alloca %struct.gfar_private*, align 8
  %3 = alloca %struct.gfar_priv_tx_q*, align 8
  %4 = alloca %struct.gfar_priv_rx_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_queue*, align 8
  store %struct.gfar_private* %0, %struct.gfar_private** %2, align 8
  store %struct.gfar_priv_tx_q* null, %struct.gfar_priv_tx_q** %3, align 8
  store %struct.gfar_priv_rx_q* null, %struct.gfar_priv_rx_q** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %10 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %15 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %14, i32 0, i32 4
  %16 = load %struct.gfar_priv_tx_q**, %struct.gfar_priv_tx_q*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %16, i64 %18
  %20 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %19, align 8
  store %struct.gfar_priv_tx_q* %20, %struct.gfar_priv_tx_q** %3, align 8
  %21 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %3, align 8
  %22 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %3, align 8
  %25 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %23, i32 %26)
  store %struct.netdev_queue* %27, %struct.netdev_queue** %6, align 8
  %28 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %3, align 8
  %29 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %3, align 8
  %34 = call i32 @free_skb_tx_queue(%struct.gfar_priv_tx_q* %33)
  br label %35

35:                                               ; preds = %32, %13
  %36 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %37 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %7

41:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %45 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %50 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %49, i32 0, i32 6
  %51 = load %struct.gfar_priv_rx_q**, %struct.gfar_priv_rx_q*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %51, i64 %53
  %55 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %54, align 8
  store %struct.gfar_priv_rx_q* %55, %struct.gfar_priv_rx_q** %4, align 8
  %56 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %4, align 8
  %57 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %4, align 8
  %62 = call i32 @free_skb_rx_queue(%struct.gfar_priv_rx_q* %61)
  br label %63

63:                                               ; preds = %60, %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %69 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %72 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %77 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = add i64 %75, %80
  %82 = trunc i64 %81 to i32
  %83 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %84 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %83, i32 0, i32 4
  %85 = load %struct.gfar_priv_tx_q**, %struct.gfar_priv_tx_q*** %84, align 8
  %86 = getelementptr inbounds %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %85, i64 0
  %87 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %86, align 8
  %88 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %91 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %90, i32 0, i32 4
  %92 = load %struct.gfar_priv_tx_q**, %struct.gfar_priv_tx_q*** %91, align 8
  %93 = getelementptr inbounds %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %92, i64 0
  %94 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %93, align 8
  %95 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dma_free_coherent(i32 %70, i32 %82, i32 %89, i32 %96)
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @free_skb_tx_queue(%struct.gfar_priv_tx_q*) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

declare dso_local i32 @free_skb_rx_queue(%struct.gfar_priv_rx_q*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
