; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_tx_ack_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_tx_ack_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Spurious TX complete indication\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@WCN36XX_DBG_DXE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dxe tx ack status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wcn36xx_dxe_tx_ack_ind(%struct.wcn36xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %9 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %13 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %12, i32 0, i32 2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %16, align 8
  %17 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %18 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  store %struct.ieee80211_tx_info* %27, %struct.ieee80211_tx_info** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* @WCN36XX_DBG_DXE, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @wcn36xx_dbg(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @ieee80211_tx_status_irqsafe(i32 %42, %struct.sk_buff* %43)
  %45 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %46 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ieee80211_wake_queues(i32 %47)
  br label %49

49:                                               ; preds = %36, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wcn36xx_warn(i8*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
