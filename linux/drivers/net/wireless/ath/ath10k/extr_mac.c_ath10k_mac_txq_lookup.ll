; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_txq_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_txq_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txq = type { i32 }
%struct.ath10k = type { %struct.ath10k_peer**, i32 }
%struct.ath10k_peer = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { %struct.ieee80211_txq* }
%struct.TYPE_3__ = type { %struct.ieee80211_txq** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_txq* @ath10k_mac_txq_lookup(%struct.ath10k* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_txq*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath10k_peer*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = load %struct.ath10k_peer**, %struct.ath10k_peer*** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.ath10k_peer*, %struct.ath10k_peer** %14, i64 %15
  %17 = load %struct.ath10k_peer*, %struct.ath10k_peer** %16, align 8
  store %struct.ath10k_peer* %17, %struct.ath10k_peer** %8, align 8
  %18 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %19 = icmp ne %struct.ath10k_peer* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.ieee80211_txq* null, %struct.ieee80211_txq** %4, align 8
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %23 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.ieee80211_txq* null, %struct.ieee80211_txq** %4, align 8
  br label %53

27:                                               ; preds = %21
  %28 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %29 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %34 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %37, i64 %38
  %40 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %39, align 8
  store %struct.ieee80211_txq* %40, %struct.ieee80211_txq** %4, align 8
  br label %53

41:                                               ; preds = %27
  %42 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %43 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %48 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %50, align 8
  store %struct.ieee80211_txq* %51, %struct.ieee80211_txq** %4, align 8
  br label %53

52:                                               ; preds = %41
  store %struct.ieee80211_txq* null, %struct.ieee80211_txq** %4, align 8
  br label %53

53:                                               ; preds = %52, %46, %32, %26, %20
  %54 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  ret %struct.ieee80211_txq* %54
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
