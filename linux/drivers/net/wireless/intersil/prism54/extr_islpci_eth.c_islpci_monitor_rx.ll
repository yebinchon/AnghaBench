; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_eth.c_islpci_monitor_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_eth.c_islpci_monitor_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.rfmon_header = type { i32, i32, i32, i32, i32 }
%struct.avs_80211_1_header = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ARPHRD_IEEE80211_PRISM = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@P80211CAPTURE_VERSION = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.sk_buff**)* @islpci_monitor_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @islpci_monitor_rx(%struct.TYPE_9__* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.rfmon_header*, align 8
  %7 = alloca %struct.avs_80211_1_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %13 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rfmon_header*
  store %struct.rfmon_header* %17, %struct.rfmon_header** %6, align 8
  %18 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %19 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %147

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ARPHRD_IEEE80211_PRISM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %130

32:                                               ; preds = %24
  %33 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %34 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %38 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %41 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %45 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = call i32 @skb_pull(%struct.sk_buff* %48, i32 20)
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = call i32 @skb_headroom(%struct.sk_buff* %51)
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 112
  br i1 %54, label %55, label %70

55:                                               ; preds = %32
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %57, i32 112, i32 0, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %12, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %67, align 8
  br label %69

68:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %147

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %32
  %71 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %71, align 8
  %73 = call %struct.avs_80211_1_header* @skb_push(%struct.sk_buff* %72, i32 112)
  store %struct.avs_80211_1_header* %73, %struct.avs_80211_1_header** %7, align 8
  %74 = load i32, i32* @P80211CAPTURE_VERSION, align 4
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %77 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = call i8* @cpu_to_be32(i32 112)
  %79 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %80 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i8* @cpu_to_be64(i32 %81)
  %83 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %84 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %83, i32 0, i32 11
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @jiffies, align 4
  %86 = call i8* @cpu_to_be64(i32 %85)
  %87 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %88 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %87, i32 0, i32 10
  store i8* %86, i8** %88, align 8
  %89 = call i8* @cpu_to_be32(i32 6)
  %90 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %91 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %90, i32 0, i32 9
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @channel_of_freq(i32 %92)
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %96 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %95, i32 0, i32 8
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %97, 5
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %101 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = call i8* @cpu_to_be32(i32 0)
  %103 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %104 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  %105 = call i8* @cpu_to_be32(i32 0)
  %106 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %107 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = call i8* @cpu_to_be32(i32 3)
  %109 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %110 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, 127
  %113 = call i8* @cpu_to_be32(i32 %112)
  %114 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %115 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @cpu_to_be32(i32 %120)
  %122 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %123 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = call i8* @cpu_to_be32(i32 0)
  %125 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %126 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = call i8* @cpu_to_be32(i32 0)
  %128 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %129 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %134

130:                                              ; preds = %24
  %131 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %131, align 8
  %133 = call i32 @skb_pull(%struct.sk_buff* %132, i32 20)
  br label %134

134:                                              ; preds = %130, %70
  %135 = load i32, i32* @ETH_P_802_2, align 4
  %136 = call i32 @htons(i32 %135)
  %137 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %137, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %140, align 8
  %142 = call i32 @skb_reset_mac_header(%struct.sk_buff* %141)
  %143 = load i32, i32* @PACKET_OTHERHOST, align 4
  %144 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %144, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %134, %68, %23
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local %struct.avs_80211_1_header* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @channel_of_freq(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
