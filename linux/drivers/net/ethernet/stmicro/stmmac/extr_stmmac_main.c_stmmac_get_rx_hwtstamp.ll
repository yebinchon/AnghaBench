; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_get_rx_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_get_rx_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dma_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"get valid RX hw timestamp %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot get RX hw timestamp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, %struct.dma_desc*, %struct.dma_desc*, %struct.sk_buff*)* @stmmac_get_rx_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_get_rx_hwtstamp(%struct.stmmac_priv* %0, %struct.dma_desc* %1, %struct.dma_desc* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.dma_desc*, align 8
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.skb_shared_hwtstamps*, align 8
  %10 = alloca %struct.dma_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store %struct.dma_desc* %1, %struct.dma_desc** %6, align 8
  store %struct.dma_desc* %2, %struct.dma_desc** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  store %struct.skb_shared_hwtstamps* null, %struct.skb_shared_hwtstamps** %9, align 8
  %12 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  store %struct.dma_desc* %12, %struct.dma_desc** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %68

18:                                               ; preds = %4
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %18
  %33 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  store %struct.dma_desc* %33, %struct.dma_desc** %10, align 8
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %36 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %37 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %39 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @stmmac_get_rx_timestamp_status(%struct.stmmac_priv* %35, %struct.dma_desc* %36, %struct.dma_desc* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  %44 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %45 = load %struct.dma_desc*, %struct.dma_desc** %10, align 8
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %47 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @stmmac_get_timestamp(%struct.stmmac_priv* %44, %struct.dma_desc* %45, i32 %48, i32* %11)
  %50 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %51 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %55)
  store %struct.skb_shared_hwtstamps* %56, %struct.skb_shared_hwtstamps** %9, align 8
  %57 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %9, align 8
  %58 = call i32 @memset(%struct.skb_shared_hwtstamps* %57, i32 0, i32 4)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ns_to_ktime(i32 %59)
  %61 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %9, align 8
  %62 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %68

63:                                               ; preds = %34
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %17, %63, %43
  ret void
}

declare dso_local i64 @stmmac_get_rx_timestamp_status(%struct.stmmac_priv*, %struct.dma_desc*, %struct.dma_desc*, i32) #1

declare dso_local i32 @stmmac_get_timestamp(%struct.stmmac_priv*, %struct.dma_desc*, i32, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
