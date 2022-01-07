; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_process_mgmt_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_process_mgmt_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_5__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.rxpd = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"do not receive mgmt frames on uninitialized intf\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_process_mgmt_packet(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxpd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %113

12:                                               ; preds = %2
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17, %12
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @mwifiex_dbg(i32 %27, i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %113

30:                                               ; preds = %17
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.rxpd*
  store %struct.rxpd* %34, %struct.rxpd** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %37 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = call i32 @skb_pull(%struct.sk_buff* %35, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_pull(%struct.sk_buff* %41, i32 4)
  %43 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %44 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = bitcast i8* %50 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %51, %struct.ieee80211_hdr** %8, align 8
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ieee80211_is_mgmt(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %30
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %60 = bitcast %struct.ieee80211_hdr* %59 to i32*
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %63 = call i64 @mwifiex_parse_mgmt_packet(%struct.mwifiex_private* %58, i32* %60, i32 %61, %struct.rxpd* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %113

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %30
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memmove(i32 %72, i32 %77, i32 %81)
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 4
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @cpu_to_le16(i32 %90)
  %92 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %93 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %95 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %94, i32 0, i32 1
  %96 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %97 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %102 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %105 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CAL_RSSI(i32 %103, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @cfg80211_rx_mgmt(%struct.TYPE_6__* %95, i32 %100, i32 %107, i64 %110, i32 %111, i32 0)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %67, %65, %24, %11
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @mwifiex_parse_mgmt_packet(%struct.mwifiex_private*, i32*, i32, %struct.rxpd*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cfg80211_rx_mgmt(%struct.TYPE_6__*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @CAL_RSSI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
