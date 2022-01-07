; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_enqueue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_enqueue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }

@EF4_TX_CB_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_enqueue_skb(%struct.ef4_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ef4_tx_queue*, align 8
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @skb_is_gso(%struct.sk_buff* %12)
  %14 = call i32 @EF4_WARN_ON_PARANOID(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EF4_TX_CB_SIZE, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25, %2
  %30 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i64 @ef4_enqueue_skb_copy(%struct.ef4_tx_queue* %30, %struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %88

35:                                               ; preds = %29
  %36 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %37 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %25, %20
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i64 @ef4_tx_map_data(%struct.ef4_tx_queue* %44, %struct.sk_buff* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %88

49:                                               ; preds = %43, %40
  %50 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %51 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @netdev_tx_sent_queue(i32 %52, i32 %53)
  %55 = call i64 (...) @netdev_xmit_more()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %59 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @netif_xmit_stopped(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %57, %49
  %64 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %65 = call %struct.ef4_tx_queue* @ef4_tx_queue_partner(%struct.ef4_tx_queue* %64)
  store %struct.ef4_tx_queue* %65, %struct.ef4_tx_queue** %8, align 8
  %66 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %8, align 8
  %67 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %8, align 8
  %72 = call i32 @ef4_nic_push_buffers(%struct.ef4_tx_queue* %71)
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %75 = call i32 @ef4_nic_push_buffers(%struct.ef4_tx_queue* %74)
  br label %80

76:                                               ; preds = %57
  %77 = call i64 (...) @netdev_xmit_more()
  %78 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %79 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %82 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %86 = call i32 @ef4_tx_maybe_stop_queue(%struct.ef4_tx_queue* %85)
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %48, %34
  %89 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %90 = call i32 @ef4_enqueue_unwind(%struct.ef4_tx_queue* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %91)
  %93 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %80
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @EF4_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @ef4_enqueue_skb_copy(%struct.ef4_tx_queue*, %struct.sk_buff*) #1

declare dso_local i64 @ef4_tx_map_data(%struct.ef4_tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i64 @netdev_xmit_more(...) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local %struct.ef4_tx_queue* @ef4_tx_queue_partner(%struct.ef4_tx_queue*) #1

declare dso_local i32 @ef4_nic_push_buffers(%struct.ef4_tx_queue*) #1

declare dso_local i32 @ef4_tx_maybe_stop_queue(%struct.ef4_tx_queue*) #1

declare dso_local i32 @ef4_enqueue_unwind(%struct.ef4_tx_queue*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
