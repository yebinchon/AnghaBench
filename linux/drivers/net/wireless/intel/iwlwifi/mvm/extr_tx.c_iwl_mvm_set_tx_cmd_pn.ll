; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_pn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_tx_info*, i32*)* @iwl_mvm_set_tx_cmd_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_tx_cmd_pn(%struct.ieee80211_tx_info* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_tx_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_tx_info* %0, %struct.ieee80211_tx_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  store %struct.ieee80211_key_conf* %10, %struct.ieee80211_key_conf** %5, align 8
  %11 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %11, i32 0, i32 1
  %13 = call i32 @atomic64_inc_return(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 6
  %23 = or i32 32, %22
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 16
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 24
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 32
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 40
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @atomic64_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
