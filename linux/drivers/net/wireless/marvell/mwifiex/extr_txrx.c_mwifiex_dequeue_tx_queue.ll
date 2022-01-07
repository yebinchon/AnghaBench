; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_txrx.c_mwifiex_dequeue_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_txrx.c_mwifiex_dequeue_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.mwifiex_txinfo = type { i32, i32 }
%struct.mwifiex_tx_param = type { i32 }

@MWIFIEX_BUF_FLAG_AGGR_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_dequeue_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_dequeue_tx_queue(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_txinfo*, align 8
  %7 = alloca %struct.mwifiex_tx_param, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = call %struct.sk_buff* @skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %15)
  store %struct.mwifiex_txinfo* %16, %struct.mwifiex_txinfo** %6, align 8
  %17 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %6, align 8
  %18 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MWIFIEX_BUF_FLAG_AGGR_PKT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %6, align 8
  %25 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 1
  %29 = call i32 @atomic_sub(i32 %26, i32* %28)
  br label %34

30:                                               ; preds = %14
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 1
  %33 = call i32 @atomic_dec(i32* %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %35, i32 0, i32 0
  %37 = call i32 @skb_queue_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %40, i32 0, i32 0
  %42 = call %struct.sk_buff* @skb_peek(i32* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %5, align 8
  br label %44

43:                                               ; preds = %34
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  %54 = getelementptr inbounds %struct.mwifiex_tx_param, %struct.mwifiex_tx_param* %7, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.mwifiex_tx_param, %struct.mwifiex_tx_param* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %60 = call i32 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.mwifiex_tx_param, %struct.mwifiex_tx_param* %7, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @mwifiex_host_to_card(%struct.mwifiex_adapter* %66, %struct.sk_buff* %67, %struct.mwifiex_tx_param* %7)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_host_to_card(%struct.mwifiex_adapter*, %struct.sk_buff*, %struct.mwifiex_tx_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
