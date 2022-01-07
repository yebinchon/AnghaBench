; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_ht_oper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_ht_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { %struct.mwifiex_bssdescriptor }
%struct.mwifiex_bssdescriptor = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_ht_operation = type { i32, i32 }
%struct.mwifiex_sta_node = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TDLS peer station not found in list\0A\00", align 1
@WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"TDLS peer doesn't support ht capabilities\0A\00", align 1
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i64*, i64, %struct.sk_buff*)* @mwifiex_tdls_add_ht_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_tdls_add_ht_oper(%struct.mwifiex_private* %0, i64* %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_ht_operation*, align 8
  %11 = alloca %struct.mwifiex_sta_node*, align 8
  %12 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %13 = alloca i64*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.mwifiex_bssdescriptor* %16, %struct.mwifiex_bssdescriptor** %12, align 8
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %17, i64* %18)
  store %struct.mwifiex_sta_node* %19, %struct.mwifiex_sta_node** %11, align 8
  %20 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %11, align 8
  %21 = icmp ne %struct.mwifiex_sta_node* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 @mwifiex_dbg(%struct.TYPE_10__* %29, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %112

32:                                               ; preds = %4
  %33 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %11, align 8
  %34 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* @WARN, align 4
  %45 = call i32 @mwifiex_dbg(%struct.TYPE_10__* %43, i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %112

46:                                               ; preds = %32
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = call i64* @skb_put(%struct.sk_buff* %47, i32 10)
  store i64* %48, i64** %13, align 8
  %49 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %13, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %13, align 8
  store i64 %50, i64* %51, align 8
  %53 = load i64*, i64** %13, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %13, align 8
  store i64 8, i64* %53, align 8
  %55 = load i64*, i64** %13, align 8
  %56 = bitcast i64* %55 to i8*
  %57 = bitcast i8* %56 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %57, %struct.ieee80211_ht_operation** %10, align 8
  %58 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %12, align 8
  %59 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %62 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ISSUPP_CHANWIDTH40(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %46
  %71 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %12, align 8
  %72 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %12, align 8
  %77 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ISALLOWED_CHANWIDTH40(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %12, align 8
  %85 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %75, %70, %46
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %12, align 8
  %96 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mwifiex_get_sec_chan_offset(i32 %97)
  %99 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %100 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = call i32 @BIT(i32 2)
  %102 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %103 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %94, %91
  %107 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %11, align 8
  %108 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %111 = call i32 @memcpy(i32* %109, %struct.ieee80211_ht_operation* %110, i32 8)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %40, %26
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @ISSUPP_CHANWIDTH40(i32) #1

declare dso_local i64 @ISALLOWED_CHANWIDTH40(i32) #1

declare dso_local i32 @mwifiex_get_sec_chan_offset(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_ht_operation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
