; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_event_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_event_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.ath9k_htc_priv*, i32, i32 }
%struct.ath9k_htc_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wmi_cmd_hdr = type { i32 }
%struct.wmi_event_swba = type { i32 }
%struct.sk_buff = type { i64 }

@ATH9K_HTC_OP_TX_DRAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_wmi_event_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wmi*, align 8
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.wmi_cmd_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wmi_event_swba*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.wmi*
  store %struct.wmi* %12, %struct.wmi** %3, align 8
  %13 = load %struct.wmi*, %struct.wmi** %3, align 8
  %14 = getelementptr inbounds %struct.wmi, %struct.wmi* %13, i32 0, i32 0
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %14, align 8
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %16

16:                                               ; preds = %93, %1
  %17 = load %struct.wmi*, %struct.wmi** %3, align 8
  %18 = getelementptr inbounds %struct.wmi, %struct.wmi* %17, i32 0, i32 1
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.wmi*, %struct.wmi** %3, align 8
  %22 = getelementptr inbounds %struct.wmi, %struct.wmi* %21, i32 0, i32 2
  %23 = call %struct.sk_buff* @__skb_dequeue(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load %struct.wmi*, %struct.wmi** %3, align 8
  %28 = getelementptr inbounds %struct.wmi, %struct.wmi* %27, i32 0, i32 1
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %94

31:                                               ; preds = %16
  %32 = load %struct.wmi*, %struct.wmi** %3, align 8
  %33 = getelementptr inbounds %struct.wmi, %struct.wmi* %32, i32 0, i32 1
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %39, %struct.wmi_cmd_hdr** %5, align 8
  %40 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i8* @skb_pull(%struct.sk_buff* %44, i32 4)
  store i8* %45, i8** %6, align 8
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %89 [
    i32 129, label %47
    i32 130, label %53
    i32 128, label %64
  ]

47:                                               ; preds = %31
  %48 = load i8*, i8** %6, align 8
  %49 = bitcast i8* %48 to %struct.wmi_event_swba*
  store %struct.wmi_event_swba* %49, %struct.wmi_event_swba** %7, align 8
  %50 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %51 = load %struct.wmi_event_swba*, %struct.wmi_event_swba** %7, align 8
  %52 = call i32 @ath9k_htc_swba(%struct.ath9k_htc_priv* %50, %struct.wmi_event_swba* %51)
  br label %90

53:                                               ; preds = %31
  %54 = load %struct.wmi*, %struct.wmi** %3, align 8
  %55 = getelementptr inbounds %struct.wmi, %struct.wmi* %54, i32 0, i32 0
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %55, align 8
  %57 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wmi*, %struct.wmi** %3, align 8
  %60 = getelementptr inbounds %struct.wmi, %struct.wmi* %59, i32 0, i32 0
  %61 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %60, align 8
  %62 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %61, i32 0, i32 1
  %63 = call i32 @ieee80211_queue_work(i32 %58, i32* %62)
  br label %90

64:                                               ; preds = %31
  %65 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATH9K_HTC_OP_TX_DRAIN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %78 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock_bh(i32* %79)
  br label %90

81:                                               ; preds = %64
  %82 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %83 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock_bh(i32* %84)
  %86 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @ath9k_htc_txstatus(%struct.ath9k_htc_priv* %86, i8* %87)
  br label %90

89:                                               ; preds = %31
  br label %90

90:                                               ; preds = %89, %81, %76, %53, %47
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  br label %93

93:                                               ; preds = %90
  br i1 true, label %16, label %94

94:                                               ; preds = %26, %93
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath9k_htc_swba(%struct.ath9k_htc_priv*, %struct.wmi_event_swba*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath9k_htc_txstatus(%struct.ath9k_htc_priv*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
