; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_set_sta_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_set_sta_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_sta_node = type { i32, i32 }
%struct.ieee_types_header = type { i32 }
%struct.ieee80211_ht_cap = type { i32 }

@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_8K = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_set_sta_ht_cap(%struct.mwifiex_private* %0, i32* %1, i32 %2, %struct.mwifiex_sta_node* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_sta_node*, align 8
  %9 = alloca %struct.ieee_types_header*, align 8
  %10 = alloca %struct.ieee80211_ht_cap*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mwifiex_sta_node* %3, %struct.mwifiex_sta_node** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %49

14:                                               ; preds = %4
  %15 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @cfg80211_find_ie(i32 %15, i32* %16, i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.ieee_types_header*
  store %struct.ieee_types_header* %20, %struct.ieee_types_header** %9, align 8
  %21 = load %struct.ieee_types_header*, %struct.ieee_types_header** %9, align 8
  %22 = icmp ne %struct.ieee_types_header* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = load %struct.ieee_types_header*, %struct.ieee_types_header** %9, align 8
  %25 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %24, i64 1
  %26 = bitcast %struct.ieee_types_header* %25 to i8*
  %27 = bitcast i8* %26 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %27, %struct.ieee80211_ht_cap** %10, align 8
  %28 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %29 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @MWIFIEX_TX_DATA_BUF_SIZE_8K, align 4
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @MWIFIEX_TX_DATA_BUF_SIZE_4K, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %44 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %48

45:                                               ; preds = %14
  %46 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %47 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %13
  ret void
}

declare dso_local i64 @cfg80211_find_ie(i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
