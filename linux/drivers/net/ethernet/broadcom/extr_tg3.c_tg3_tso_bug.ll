; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_tso_bug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_tso_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tg3_napi = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.tg3_napi*, %struct.netdev_queue*, %struct.sk_buff*)* @tg3_tso_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_tso_bug(%struct.tg3* %0, %struct.tg3_napi* %1, %struct.netdev_queue* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca %struct.tg3_napi*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %6, align 8
  store %struct.tg3_napi* %1, %struct.tg3_napi** %7, align 8
  store %struct.netdev_queue* %2, %struct.netdev_queue** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 3
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load %struct.tg3_napi*, %struct.tg3_napi** %7, align 8
  %20 = call i64 @tg3_tx_avail(%struct.tg3_napi* %19)
  %21 = load i64, i64* %12, align 8
  %22 = icmp sle i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %4
  %27 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %28 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %27)
  %29 = call i32 (...) @smp_mb()
  %30 = load %struct.tg3_napi*, %struct.tg3_napi** %7, align 8
  %31 = call i64 @tg3_tx_avail(%struct.tg3_napi* %30)
  %32 = load i64, i64* %12, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %35, i32* %5, align 4
  br label %80

36:                                               ; preds = %26
  %37 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %38 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %37)
  br label %39

39:                                               ; preds = %36, %4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load %struct.tg3*, %struct.tg3** %6, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NETIF_F_TSO, align 4
  %47 = load i32, i32* @NETIF_F_TSO6, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %40, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %10, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = call i64 @IS_ERR(%struct.sk_buff* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %39
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %39
  br label %76

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %72, %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %61, %struct.sk_buff** %11, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %10, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = load %struct.tg3*, %struct.tg3** %6, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = call i32 @tg3_start_xmit(%struct.sk_buff* %67, %struct.TYPE_3__* %70)
  br label %72

72:                                               ; preds = %60
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %60, label %75

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @dev_consume_skb_any(%struct.sk_buff* %77)
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %34
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tg3_tx_avail(%struct.tg3_napi*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @tg3_start_xmit(%struct.sk_buff*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
