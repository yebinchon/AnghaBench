; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_find_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_find_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_pmsr_request = type { i32, %struct.cfg80211_pmsr_request_peer* }
%struct.cfg80211_pmsr_request_peer = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_pmsr_request*, i32*)* @iwl_mvm_ftm_find_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_ftm_find_peer(%struct.cfg80211_pmsr_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_pmsr_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_pmsr_request_peer*, align 8
  store %struct.cfg80211_pmsr_request* %0, %struct.cfg80211_pmsr_request** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %4, align 8
  %11 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %4, align 8
  %16 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %15, i32 0, i32 1
  %17 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %17, i64 %19
  store %struct.cfg80211_pmsr_request_peer* %20, %struct.cfg80211_pmsr_request_peer** %7, align 8
  %21 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %7, align 8
  %22 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @ether_addr_equal_unaligned(i32 %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @ether_addr_equal_unaligned(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
