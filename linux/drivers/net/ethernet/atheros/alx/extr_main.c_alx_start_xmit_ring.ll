; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_start_xmit_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_start_xmit_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.alx_tx_queue = type { i64, i32, i32, %struct.alx_txd*, i32 }
%struct.alx_txd = type { i32 }
%struct.alx_priv = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.alx_tx_queue*)* @alx_start_xmit_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_start_xmit_ring(%struct.sk_buff* %0, %struct.alx_tx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.alx_tx_queue*, align 8
  %6 = alloca %struct.alx_priv*, align 8
  %7 = alloca %struct.alx_txd*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.alx_tx_queue* %1, %struct.alx_tx_queue** %5, align 8
  %9 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %10 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.alx_priv* @netdev_priv(i32 %11)
  store %struct.alx_priv* %12, %struct.alx_priv** %6, align 8
  %13 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %14 = call i32 @alx_tpd_avail(%struct.alx_tx_queue* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @alx_tpd_req(%struct.sk_buff* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %20 = call i32 @alx_get_tx_queue(%struct.alx_tx_queue* %19)
  %21 = call i32 @netif_tx_stop_queue(i32 %20)
  br label %84

22:                                               ; preds = %2
  %23 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %24 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %23, i32 0, i32 3
  %25 = load %struct.alx_txd*, %struct.alx_txd** %24, align 8
  %26 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %27 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %25, i64 %28
  store %struct.alx_txd* %29, %struct.alx_txd** %7, align 8
  %30 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  %31 = call i32 @memset(%struct.alx_txd* %30, i32 0, i32 4)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  %34 = call i32 @alx_tso(%struct.sk_buff* %32, %struct.alx_txd* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %84

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  %44 = call i64 @alx_tx_csum(%struct.sk_buff* %42, %struct.alx_txd* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %84

47:                                               ; preds = %41, %38
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i64 @alx_map_tx_skb(%struct.alx_tx_queue* %49, %struct.sk_buff* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %84

54:                                               ; preds = %48
  %55 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %56 = call i32 @alx_get_tx_queue(%struct.alx_tx_queue* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netdev_tx_sent_queue(i32 %56, i32 %59)
  %61 = call i32 (...) @wmb()
  %62 = load %struct.alx_priv*, %struct.alx_priv** %6, align 8
  %63 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %62, i32 0, i32 0
  %64 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %65 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %68 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @alx_write_mem16(i32* %63, i32 %66, i64 %69)
  %71 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %72 = call i32 @alx_tpd_avail(%struct.alx_tx_queue* %71)
  %73 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %74 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %75, 8
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %54
  %79 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %5, align 8
  %80 = call i32 @alx_get_tx_queue(%struct.alx_tx_queue* %79)
  %81 = call i32 @netif_tx_stop_queue(i32 %80)
  br label %82

82:                                               ; preds = %78, %54
  %83 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %88

84:                                               ; preds = %53, %46, %37, %18
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %85)
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %82
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.alx_priv* @netdev_priv(i32) #1

declare dso_local i32 @alx_tpd_avail(%struct.alx_tx_queue*) #1

declare dso_local i32 @alx_tpd_req(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @alx_get_tx_queue(%struct.alx_tx_queue*) #1

declare dso_local i32 @memset(%struct.alx_txd*, i32, i32) #1

declare dso_local i32 @alx_tso(%struct.sk_buff*, %struct.alx_txd*) #1

declare dso_local i64 @alx_tx_csum(%struct.sk_buff*, %struct.alx_txd*) #1

declare dso_local i64 @alx_map_tx_skb(%struct.alx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @alx_write_mem16(i32*, i32, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
