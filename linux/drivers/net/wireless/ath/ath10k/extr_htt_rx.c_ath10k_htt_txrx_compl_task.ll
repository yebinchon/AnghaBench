; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_txrx_compl_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_txrx_compl_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htt }
%struct.ath10k_htt = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.htt_tx_done = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htt_txrx_compl_task(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htt*, align 8
  %6 = alloca %struct.htt_tx_done, align 4
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  store %struct.ath10k_htt* %15, %struct.ath10k_htt** %5, align 8
  %16 = bitcast %struct.htt_tx_done* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %17 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %7)
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ath10k_htt_rx_deliver_msdu(%struct.ath10k* %18, i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %120

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %51, %26
  %28 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %29 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %28, i32 0, i32 4
  %30 = call %struct.sk_buff* @skb_dequeue(i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %34 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 @ath10k_htt_rx_in_ord_ind(%struct.ath10k* %37, %struct.sk_buff* %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %41 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  br label %120

51:                                               ; preds = %32
  br label %27

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %66, %52
  %54 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %55 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %54, i32 0, i32 2
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %60 = call i32 @ath10k_htt_rx_handle_amsdu(%struct.ath10k_htt* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  br label %120

66:                                               ; preds = %58
  %67 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %68 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %67, i32 0, i32 2
  %69 = call i32 @atomic_dec(i32* %68)
  br label %53

70:                                               ; preds = %53
  %71 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @ath10k_htt_rx_deliver_msdu(%struct.ath10k* %71, i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %80 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %79, i32 0, i32 1
  %81 = call i32 @kfifo_is_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %83, %78, %70
  br label %86

86:                                               ; preds = %91, %85
  %87 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %88 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %87, i32 0, i32 1
  %89 = call i64 @kfifo_get(i32* %88, %struct.htt_tx_done* %6)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %93 = call i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt* %92, %struct.htt_tx_done* %6)
  br label %86

94:                                               ; preds = %86
  %95 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %96 = call i32 @ath10k_mac_tx_push_pending(%struct.ath10k* %95)
  %97 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %98 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %103 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %102, i32 0, i32 0
  %104 = call i32 @skb_queue_splice_init(%struct.TYPE_4__* %103, %struct.sk_buff_head* %7)
  %105 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %106 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  br label %110

110:                                              ; preds = %113, %94
  %111 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %7)
  store %struct.sk_buff* %111, %struct.sk_buff** %8, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = call i32 @ath10k_htt_rx_tx_fetch_ind(%struct.ath10k* %114, %struct.sk_buff* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %117)
  br label %110

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %65, %50, %25
  %121 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %122 = call i32 @ath10k_htt_rx_msdu_buff_replenish(%struct.ath10k_htt* %121)
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %4, align 4
  br label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %10, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #2

declare dso_local i32 @ath10k_htt_rx_deliver_msdu(%struct.ath10k*, i32, i32) #2

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @ath10k_htt_rx_in_ord_ind(%struct.ath10k*, %struct.sk_buff*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @ath10k_htt_rx_handle_amsdu(%struct.ath10k_htt*) #2

declare dso_local i32 @atomic_dec(i32*) #2

declare dso_local i32 @kfifo_is_empty(i32*) #2

declare dso_local i64 @kfifo_get(i32*, %struct.htt_tx_done*) #2

declare dso_local i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt*, %struct.htt_tx_done*) #2

declare dso_local i32 @ath10k_mac_tx_push_pending(%struct.ath10k*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @skb_queue_splice_init(%struct.TYPE_4__*, %struct.sk_buff_head*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #2

declare dso_local i32 @ath10k_htt_rx_tx_fetch_ind(%struct.ath10k*, %struct.sk_buff*) #2

declare dso_local i32 @ath10k_htt_rx_msdu_buff_replenish(%struct.ath10k_htt*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
