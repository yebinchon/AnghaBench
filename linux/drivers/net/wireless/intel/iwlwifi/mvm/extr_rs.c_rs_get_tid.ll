; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32 }

@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hdr*)* @rs_get_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_tid(%struct.ieee80211_hdr* %0) #0 {
  %2 = alloca %struct.ieee80211_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %2, align 8
  %5 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ieee80211_is_data_qos(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %2, align 8
  %13 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %21 = icmp sgt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
