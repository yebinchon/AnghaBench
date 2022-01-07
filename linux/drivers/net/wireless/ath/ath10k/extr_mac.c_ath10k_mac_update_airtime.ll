; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_airtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_airtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_txq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ath10k_sta = type { i32 }

@WMI_SERVICE_REPORT_AIRTIME = common dso_local global i32 0, align 4
@IEEE80211_ATF_OVERHEAD_IFS = common dso_local global i64 0, align 8
@IEEE80211_ATF_OVERHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ieee80211_txq*, %struct.sk_buff*)* @ath10k_mac_update_airtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_update_airtime(%struct.ath10k* %0, %struct.ieee80211_txq* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ieee80211_txq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ath10k_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ieee80211_txq* %1, %struct.ieee80211_txq** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %6, align 8
  %12 = icmp ne %struct.ieee80211_txq* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %13
  %21 = load i32, i32* @WMI_SERVICE_REPORT_AIRTIME, align 4
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @test_bit(i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %76

30:                                               ; preds = %20
  %31 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %39, %struct.ath10k_sta** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 38
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ath10k_sta*, %struct.ath10k_sta** %8, align 8
  %45 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %30
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 8
  %51 = mul nsw i32 %50, 10
  %52 = load %struct.ath10k_sta*, %struct.ath10k_sta** %8, align 8
  %53 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  store i32 %55, i32* %10, align 4
  %56 = load i64, i64* @IEEE80211_ATF_OVERHEAD_IFS, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  br label %71

61:                                               ; preds = %30
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 8
  %64 = mul nsw i32 %63, 10
  %65 = sdiv i32 %64, 60
  store i32 %65, i32* %10, align 4
  %66 = load i64, i64* @IEEE80211_ATF_OVERHEAD, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %61, %48
  %72 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %73 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %28, %18
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
