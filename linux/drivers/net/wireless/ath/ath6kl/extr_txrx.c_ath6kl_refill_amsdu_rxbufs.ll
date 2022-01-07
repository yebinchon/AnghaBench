; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_refill_amsdu_rxbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_refill_amsdu_rxbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32 }
%struct.htc_packet = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i64 }

@ATH6KL_AMSDU_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_refill_amsdu_rxbufs(%struct.ath6kl* %0, i32 %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_packet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %8
  %12 = load i32, i32* @ATH6KL_AMSDU_BUFFER_SIZE, align 4
  %13 = call %struct.sk_buff* @ath6kl_buf_alloc(i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %64

17:                                               ; preds = %11
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.htc_packet*
  store %struct.htc_packet* %21, %struct.htc_packet** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @IS_ALIGNED(i64 %24, i32 4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i64 @skb_headlen(%struct.sk_buff* %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 4
  %34 = call i64 @PTR_ALIGN(i64 %33, i32 4)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %37, i64 %38)
  br label %40

40:                                               ; preds = %27, %17
  %41 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @ATH6KL_AMSDU_BUFFER_SIZE, align 4
  %47 = call i32 @set_htc_rxpkt_info(%struct.htc_packet* %41, %struct.sk_buff* %42, i64 %45, i32 %46, i32 0)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %50 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %49, i32 0, i32 1
  store %struct.sk_buff* %48, %struct.sk_buff** %50, align 8
  %51 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %52 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %55 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %54, i32 0, i32 0
  %56 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %57 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %56, i32 0, i32 1
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %60 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %4, align 4
  br label %8

64:                                               ; preds = %16, %8
  ret void
}

declare dso_local %struct.sk_buff* @ath6kl_buf_alloc(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @PTR_ALIGN(i64, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i64) #1

declare dso_local i32 @set_htc_rxpkt_info(%struct.htc_packet*, %struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
