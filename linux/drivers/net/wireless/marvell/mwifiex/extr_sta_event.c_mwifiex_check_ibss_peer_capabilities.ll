; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_check_ibss_peer_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_check_ibss_peer_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_sta_node = type { i32, i32, i8* }
%struct.sk_buff = type { i32, i32* }
%struct.ieee_types_header = type { i32, i32 }
%struct.mwifiex_ie_types_mgmt_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_ht_cap = type { i32 }
%struct.ieee80211_vht_cap = type { i32 }

@MWIFIEX_IBSS_CONNECT_EVT_FIX_SIZE = common dso_local global i32 0, align 4
@EVT_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ibss peer capabilities:\00", align 1
@TLV_TYPE_UAP_MGMT_FRAME = common dso_local global i32 0, align 4
@MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"management frame tlv not found!\0A\00", align 1
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_8K = common dso_local global i8* null, align 8
@MWIFIEX_TX_DATA_BUF_SIZE_4K = common dso_local global i8* null, align 8
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"11n enabled!, max_amsdu : %d\0A\00", align 1
@MWIFIEX_TX_DATA_BUF_SIZE_12K = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"11ac enabled!, max_amsdu : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_sta_node*, %struct.sk_buff*)* @mwifiex_check_ibss_peer_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_check_ibss_peer_capabilities(%struct.mwifiex_private* %0, %struct.mwifiex_sta_node* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee_types_header*, align 8
  %12 = alloca %struct.mwifiex_ie_types_mgmt_frame*, align 8
  %13 = alloca %struct.ieee80211_ht_cap*, align 8
  %14 = alloca %struct.ieee80211_vht_cap*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_sta_node* %1, %struct.mwifiex_sta_node** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = load i32, i32* @MWIFIEX_IBSS_CONNECT_EVT_FIX_SIZE, align 4
  %17 = call i32 @skb_pull(%struct.sk_buff* %15, i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EVT_D, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mwifiex_dbg_dump(i32 %26, i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load i32, i32* @MWIFIEX_IBSS_CONNECT_EVT_FIX_SIZE, align 4
  %37 = call i32 @skb_push(%struct.sk_buff* %35, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = bitcast i8* %39 to %struct.mwifiex_ie_types_mgmt_frame*
  store %struct.mwifiex_ie_types_mgmt_frame* %40, %struct.mwifiex_ie_types_mgmt_frame** %12, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 8
  br i1 %43, label %44, label %60

44:                                               ; preds = %3
  %45 = load %struct.mwifiex_ie_types_mgmt_frame*, %struct.mwifiex_ie_types_mgmt_frame** %12, align 8
  %46 = getelementptr inbounds %struct.mwifiex_ie_types_mgmt_frame, %struct.mwifiex_ie_types_mgmt_frame* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load i32, i32* @TLV_TYPE_UAP_MGMT_FRAME, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.mwifiex_ie_types_mgmt_frame*, %struct.mwifiex_ie_types_mgmt_frame** %12, align 8
  %54 = getelementptr inbounds %struct.mwifiex_ie_types_mgmt_frame, %struct.mwifiex_ie_types_mgmt_frame* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 20
  store i32* %59, i32** %10, align 8
  br label %66

60:                                               ; preds = %44, %3
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %62 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MSG, align 4
  %65 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %63, i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %167

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %153, %66
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %69, 8
  br i1 %70, label %71, label %166

71:                                               ; preds = %67
  %72 = load i32*, i32** %10, align 8
  %73 = bitcast i32* %72 to %struct.ieee_types_header*
  store %struct.ieee_types_header* %73, %struct.ieee_types_header** %11, align 8
  %74 = load %struct.ieee_types_header*, %struct.ieee_types_header** %11, align 8
  %75 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %166

84:                                               ; preds = %71
  %85 = load %struct.ieee_types_header*, %struct.ieee_types_header** %11, align 8
  %86 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %152 [
    i32 129, label %88
    i32 128, label %118
  ]

88:                                               ; preds = %84
  %89 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %90 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.ieee_types_header*, %struct.ieee_types_header** %11, align 8
  %92 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %91, i64 2
  %93 = bitcast %struct.ieee_types_header* %92 to i8*
  %94 = bitcast i8* %93 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %94, %struct.ieee80211_ht_cap** %13, align 8
  %95 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %13, align 8
  %96 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_8K, align 8
  br label %106

104:                                              ; preds = %88
  %105 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_4K, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i8* [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %109 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %111 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @INFO, align 4
  %114 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %115 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %112, i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  br label %153

118:                                              ; preds = %84
  %119 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %120 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.ieee_types_header*, %struct.ieee_types_header** %11, align 8
  %122 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %121, i64 2
  %123 = bitcast %struct.ieee_types_header* %122 to i8*
  %124 = bitcast i8* %123 to %struct.ieee80211_vht_cap*
  store %struct.ieee80211_vht_cap* %124, %struct.ieee80211_vht_cap** %14, align 8
  %125 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %14, align 8
  %126 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = and i32 %128, 3
  switch i32 %129, label %142 [
    i32 132, label %130
    i32 130, label %134
    i32 131, label %138
  ]

130:                                              ; preds = %118
  %131 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_12K, align 8
  %132 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %133 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %143

134:                                              ; preds = %118
  %135 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_8K, align 8
  %136 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %137 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  br label %143

138:                                              ; preds = %118
  %139 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_4K, align 8
  %140 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %141 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %118, %138
  br label %143

143:                                              ; preds = %142, %134, %130
  %144 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %145 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @INFO, align 4
  %148 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %149 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %146, i32 %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %150)
  br label %153

152:                                              ; preds = %84
  br label %153

153:                                              ; preds = %152, %143, %106
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %155, 8
  %157 = load i32*, i32** %10, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %10, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = sub i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %8, align 4
  br label %67

166:                                              ; preds = %83, %67
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %60
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @mwifiex_dbg_dump(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
