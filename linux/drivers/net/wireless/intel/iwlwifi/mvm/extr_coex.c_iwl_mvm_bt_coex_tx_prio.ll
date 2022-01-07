; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_coex_tx_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_coex_tx_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_bt_coex_tx_prio(%struct.iwl_mvm* %0, %struct.ieee80211_hdr* %1, %struct.ieee80211_tx_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %16 = call i32 @iwl_mvm_is_mplut_supported(%struct.iwl_mvm* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

23:                                               ; preds = %4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %84

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ieee80211_is_data(i32 %35)
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ieee80211_is_data_qos(i32 %40)
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %57 [
    i32 130, label %46
    i32 129, label %51
    i32 128, label %56
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %5, align 4
  br label %84

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2, i32 3
  store i32 %55, i32* %5, align 4
  br label %84

56:                                               ; preds = %44
  store i32 3, i32* %5, align 4
  br label %84

57:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %84

58:                                               ; preds = %39
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @is_multicast_ether_addr(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 3, i32* %5, align 4
  br label %84

65:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %84

66:                                               ; preds = %34
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @ieee80211_is_mgmt(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @ieee80211_is_disassoc(i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 3
  store i32 %75, i32* %5, align 4
  br label %84

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @ieee80211_is_ctl(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 3, i32* %5, align 4
  br label %84

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %80, %70, %65, %64, %57, %56, %51, %46, %29, %22
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @iwl_mvm_is_mplut_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_disassoc(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
