; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_prepare_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_prepare_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc_ep = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ath10k_htc_hdr = type { i64, i32, i32, i32 }

@ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_htc_ep*, %struct.sk_buff*)* @ath10k_htc_prepare_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htc_prepare_tx_skb(%struct.ath10k_htc_ep* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k_htc_ep*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k_htc_hdr*, align 8
  store %struct.ath10k_htc_ep* %0, %struct.ath10k_htc_ep** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ath10k_htc_hdr*
  store %struct.ath10k_htc_hdr* %9, %struct.ath10k_htc_hdr** %5, align 8
  %10 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %5, align 8
  %11 = call i32 @memset(%struct.ath10k_htc_hdr* %10, i32 0, i32 24)
  %12 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 24
  %21 = call i32 @__cpu_to_le16(i64 %20)
  %22 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %27 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE, align 4
  %32 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %43 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %50 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  ret void
}

declare dso_local i32 @memset(%struct.ath10k_htc_hdr*, i32, i32) #1

declare dso_local i32 @__cpu_to_le16(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
