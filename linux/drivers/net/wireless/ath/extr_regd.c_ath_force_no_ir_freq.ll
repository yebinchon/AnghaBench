; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_force_no_ir_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_force_no_ir_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @ath_force_no_ir_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_force_no_ir_freq(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %6, i32 %7)
  store %struct.ieee80211_channel* %8, %struct.ieee80211_channel** %5, align 8
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %10 = icmp ne %struct.ieee80211_channel* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %14 = call i32 @ath_force_no_ir_chan(%struct.ieee80211_channel* %13)
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @ath_force_no_ir_chan(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
