; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_extract_amsdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_extract_amsdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i64 }
%struct.htt_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RX_MSDU_END_INFO0_LAST_MSDU = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff_head*, %struct.sk_buff_head*)* @ath10k_htt_rx_extract_amsdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_extract_amsdu(%struct.sk_buff_head* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.htt_rx_desc*, align 8
  store %struct.sk_buff_head* %0, %struct.sk_buff_head** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  %8 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %9 = call i64 @skb_queue_empty(%struct.sk_buff_head* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOBUFS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %16 = call i64 @skb_queue_empty(%struct.sk_buff_head* %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %50, %25
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %28 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %31, %struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr i8, i8* %37, i64 -4
  %39 = bitcast i8* %38 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %39, %struct.htt_rx_desc** %7, align 8
  %40 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %7, align 8
  %41 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RX_MSDU_END_INFO0_LAST_MSDU, align 4
  %46 = call i32 @__cpu_to_le32(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %51

50:                                               ; preds = %30
  br label %26

51:                                               ; preds = %49, %26
  %52 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %53 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = getelementptr i8, i8* %57, i64 -4
  %59 = bitcast i8* %58 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %59, %struct.htt_rx_desc** %7, align 8
  %60 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %7, align 8
  %61 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RX_MSDU_END_INFO0_LAST_MSDU, align 4
  %66 = call i32 @__cpu_to_le32(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %51
  %70 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %71 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %72 = call i32 @skb_queue_splice_init(%struct.sk_buff_head* %70, %struct.sk_buff_head* %71)
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %69, %22, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
