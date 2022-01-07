; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_bar_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_bar_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32*, i32* }
%struct.sk_buff = type { i32, i64 }
%struct._carl9170_tx_superframe = type { i64 }
%struct.ieee80211_bar = type { i32 }
%struct.carl9170_bar_list_entry = type { i32, %struct.sk_buff* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.sk_buff*)* @carl9170_bar_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_bar_check(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct._carl9170_tx_superframe*, align 8
  %6 = alloca %struct.ieee80211_bar*, align 8
  %7 = alloca %struct.carl9170_bar_list_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %13, %struct._carl9170_tx_superframe** %5, align 8
  %14 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %5, align 8
  %15 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ieee80211_bar*
  store %struct.ieee80211_bar* %18, %struct.ieee80211_bar** %6, align 8
  %19 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ieee80211_is_back_req(i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %29, 4
  br i1 %30, label %31, label %70

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.carl9170_bar_list_entry* @kmalloc(i32 16, i32 %34)
  store %struct.carl9170_bar_list_entry* %35, %struct.carl9170_bar_list_entry** %7, align 8
  %36 = load %struct.carl9170_bar_list_entry*, %struct.carl9170_bar_list_entry** %7, align 8
  %37 = icmp ne %struct.carl9170_bar_list_entry* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON_ONCE(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.carl9170_bar_list_entry*, %struct.carl9170_bar_list_entry** %7, align 8
  %45 = getelementptr inbounds %struct.carl9170_bar_list_entry, %struct.carl9170_bar_list_entry* %44, i32 0, i32 1
  store %struct.sk_buff* %43, %struct.sk_buff** %45, align 8
  %46 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %47 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load %struct.carl9170_bar_list_entry*, %struct.carl9170_bar_list_entry** %7, align 8
  %54 = getelementptr inbounds %struct.carl9170_bar_list_entry, %struct.carl9170_bar_list_entry* %53, i32 0, i32 0
  %55 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @list_add_tail_rcu(i32* %54, i32* %60)
  %62 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %63 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @spin_unlock_bh(i32* %67)
  br label %69

69:                                               ; preds = %42, %31
  br label %70

70:                                               ; preds = %69, %25, %2
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_back_req(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.carl9170_bar_list_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
