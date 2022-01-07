; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_netif_rx_any.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_netif_rx_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wil6210_priv = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 (%struct.wil6210_priv.0*, %struct.sk_buff.1*)*, i32 (%struct.wil6210_priv.2*, %struct.sk_buff.3*, %struct.wil_net_stats*)*, i32 (%struct.sk_buff.4*, i32*, i32*)* }
%struct.wil6210_priv.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.wil6210_priv.2 = type opaque
%struct.sk_buff.3 = type opaque
%struct.wil_net_stats = type { i32, i32 }
%struct.sk_buff.4 = type opaque
%struct.TYPE_4__ = type { %struct.wil_net_stats }

@.str = private unnamed_addr constant [18 x i8] c"Rx drop %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_netif_rx_any(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca %struct.wil_net_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.wil6210_priv* @ndev_to_wil(%struct.net_device* %9)
  store %struct.wil6210_priv* %10, %struct.wil6210_priv** %7, align 8
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %12 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32 (%struct.sk_buff.4*, i32*, i32*)*, i32 (%struct.sk_buff.4*, i32*, i32*)** %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = bitcast %struct.sk_buff* %15 to %struct.sk_buff.4*
  %17 = call i32 %14(%struct.sk_buff.4* %16, i32* %5, i32* %6)
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.wil_net_stats* %24, %struct.wil_net_stats** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @skb_orphan(%struct.sk_buff* %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %2
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %31 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64 (%struct.wil6210_priv.0*, %struct.sk_buff.1*)*, i64 (%struct.wil6210_priv.0*, %struct.sk_buff.1*)** %32, align 8
  %34 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %35 = bitcast %struct.wil6210_priv* %34 to %struct.wil6210_priv.0*
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = bitcast %struct.sk_buff* %36 to %struct.sk_buff.1*
  %38 = call i64 %33(%struct.wil6210_priv.0* %35, %struct.sk_buff.1* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %29
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wil_dbg_txrx(%struct.wil6210_priv* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.wil_net_stats*, %struct.wil_net_stats** %8, align 8
  %54 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.wil_net_stats*, %struct.wil_net_stats** %8, align 8
  %58 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %83

61:                                               ; preds = %29, %2
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %63 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32 (%struct.wil6210_priv.2*, %struct.sk_buff.3*, %struct.wil_net_stats*)*, i32 (%struct.wil6210_priv.2*, %struct.sk_buff.3*, %struct.wil_net_stats*)** %64, align 8
  %66 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %67 = bitcast %struct.wil6210_priv* %66 to %struct.wil6210_priv.2*
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = bitcast %struct.sk_buff* %68 to %struct.sk_buff.3*
  %70 = load %struct.wil_net_stats*, %struct.wil_net_stats** %8, align 8
  %71 = call i32 %65(%struct.wil6210_priv.2* %67, %struct.sk_buff.3* %69, %struct.wil_net_stats* %70)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = call i32 @dev_kfree_skb(%struct.sk_buff* %75)
  br label %83

77:                                               ; preds = %61
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.wil_net_stats*, %struct.wil_net_stats** %8, align 8
  %82 = call i32 @wil_netif_rx(%struct.sk_buff* %78, %struct.net_device* %79, i32 %80, %struct.wil_net_stats* %81, i32 1)
  br label %83

83:                                               ; preds = %77, %74, %40
  ret void
}

declare dso_local %struct.wil6210_priv* @ndev_to_wil(%struct.net_device*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_netif_rx(%struct.sk_buff*, %struct.net_device*, i32, %struct.wil_net_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
