; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_tkip_rx_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_tkip_rx_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tkip_sc = type { i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_key_seq = type { i32 }

@IWL_NUM_RSC = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tkip_sc*, %struct.ieee80211_key_conf*)* @iwl_mvm_set_tkip_rx_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_tkip_rx_seq(%struct.tkip_sc* %0, %struct.ieee80211_key_conf* %1) #0 {
  %3 = alloca %struct.tkip_sc*, align 8
  %4 = alloca %struct.ieee80211_key_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_key_seq, align 4
  store %struct.tkip_sc* %0, %struct.tkip_sc** %3, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %4, align 8
  %7 = load i32, i32* @IWL_NUM_RSC, align 4
  %8 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %9 = icmp ne i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUILD_BUG_ON(i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IWL_NUM_RSC, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = bitcast %struct.ieee80211_key_seq* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load %struct.tkip_sc*, %struct.tkip_sc** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tkip_sc, %struct.tkip_sc* %18, i64 %20
  %22 = call i32 @iwl_mvm_tkip_sc_to_seq(%struct.tkip_sc* %21, %struct.ieee80211_key_seq* %6)
  %23 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ieee80211_set_key_rx_seq(%struct.ieee80211_key_conf* %23, i32 %24, %struct.ieee80211_key_seq* %6)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %12

29:                                               ; preds = %12
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @iwl_mvm_tkip_sc_to_seq(%struct.tkip_sc*, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @ieee80211_set_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
