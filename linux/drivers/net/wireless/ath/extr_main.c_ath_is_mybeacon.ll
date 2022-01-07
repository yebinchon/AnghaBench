; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_main.c_ath_is_mybeacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_main.c_ath_is_mybeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_is_mybeacon(%struct.ath_common* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %5 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @ieee80211_is_beacon(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %12 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @is_zero_ether_addr(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %21 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ether_addr_equal_64bits(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %16, %10, %2
  %26 = phi i1 [ false, %10 ], [ false, %2 ], [ %24, %16 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal_64bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
