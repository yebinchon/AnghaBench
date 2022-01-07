; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_handle_amsdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_handle_amsdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.TYPE_2__, %struct.ieee80211_rx_status, %struct.ath10k* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ath10k = type { i32 }
%struct.sk_buff_head = type { i32 }

@ATH10K_PKT_RX_ERR_MAX = common dso_local global i32 0, align 4
@RX_HTT_HDR_STATUS_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"rx ring became corrupted: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*)* @ath10k_htt_rx_handle_amsdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_handle_amsdu(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %17 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %17, i32 0, i32 3
  %19 = load %struct.ath10k*, %struct.ath10k** %18, align 8
  store %struct.ath10k* %19, %struct.ath10k** %4, align 8
  %20 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %20, i32 0, i32 2
  store %struct.ieee80211_rx_status* %21, %struct.ieee80211_rx_status** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %22 = load i32, i32* @ATH10K_PKT_RX_ERR_MAX, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @RX_HTT_HDR_STATUS_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %28 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %29 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %33 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %89

43:                                               ; preds = %1
  %44 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %45 = call i32 @ath10k_htt_rx_amsdu_pop(%struct.ath10k_htt* %44, %struct.sk_buff_head* %6)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %47 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ath10k_warn(%struct.ath10k* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %6)
  %57 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %58 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %89

60:                                               ; preds = %43
  %61 = call i64 @skb_queue_len(%struct.sk_buff_head* %6)
  store i64 %61, i64* %12, align 8
  %62 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %63 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %64 = call i32 @ath10k_htt_rx_h_ppdu(%struct.ath10k* %62, %struct.sk_buff_head* %6, %struct.ieee80211_rx_status* %63, i32 65535)
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %69 = call i32 @ath10k_htt_rx_h_unchain(%struct.ath10k* %68, %struct.sk_buff_head* %6, i64* %8, i64* %9)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %72 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %73 = call i32 @ath10k_htt_rx_h_filter(%struct.ath10k* %71, %struct.sk_buff_head* %6, %struct.ieee80211_rx_status* %72, i64* %10)
  %74 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %75 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %76 = call i32 @ath10k_htt_rx_h_mpdu(%struct.ath10k* %74, %struct.sk_buff_head* %6, %struct.ieee80211_rx_status* %75, i32 1, i32* %26, i32* %13)
  %77 = call i64 @skb_queue_len(%struct.sk_buff_head* %6)
  store i64 %77, i64* %11, align 8
  %78 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %79 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %80 = call i32 @ath10k_htt_rx_h_enqueue(%struct.ath10k* %78, %struct.sk_buff_head* %6, %struct.ieee80211_rx_status* %79)
  %81 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @ath10k_sta_update_rx_tid_stats(%struct.ath10k* %81, i32* %26, i64 %82, i32 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %89

89:                                               ; preds = %70, %52, %36
  %90 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @ath10k_htt_rx_amsdu_pop(%struct.ath10k_htt*, %struct.sk_buff_head*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #2

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #2

declare dso_local i32 @ath10k_htt_rx_h_ppdu(%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*, i32) #2

declare dso_local i32 @ath10k_htt_rx_h_unchain(%struct.ath10k*, %struct.sk_buff_head*, i64*, i64*) #2

declare dso_local i32 @ath10k_htt_rx_h_filter(%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*, i64*) #2

declare dso_local i32 @ath10k_htt_rx_h_mpdu(%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*, i32, i32*, i32*) #2

declare dso_local i32 @ath10k_htt_rx_h_enqueue(%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*) #2

declare dso_local i32 @ath10k_sta_update_rx_tid_stats(%struct.ath10k*, i32*, i64, i32, i64, i64, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
