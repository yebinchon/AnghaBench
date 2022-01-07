; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_fast_rx_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_fast_rx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, %struct.ieee80211_hdr*, i32, i32, i32)* @fast_rx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_rx_path(%struct.atmel_private* %0, %struct.ieee80211_hdr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.atmel_private*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %16 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 24
  %21 = call i32 @atmel_copy_to_host(%struct.TYPE_5__* %17, i8* %18, i32 %20, i32 6)
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 6
  store i32 %23, i32* %8, align 4
  %24 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %25 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %31 = call i32 @crc32_le(i32 %29, i8* %30, i32 6)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %5
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 14
  %37 = call %struct.sk_buff* @dev_alloc_skb(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %12, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %158

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = call i32 @skb_reserve(%struct.sk_buff* %48, i32 2)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 12
  %53 = call i8* @skb_put(%struct.sk_buff* %50, i32 %52)
  store i8* %53, i8** %13, align 8
  %54 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %55 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 12
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 30
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @atmel_copy_to_host(%struct.TYPE_5__* %56, i8* %58, i32 %60, i32 %61)
  %63 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %64 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %47
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 12
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @crc32_le(i32 %68, i8* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %74 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = bitcast i32* %14 to i8*
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 30
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @atmel_copy_to_host(%struct.TYPE_5__* %75, i8* %76, i32 %80, i32 4)
  %82 = load i32, i32* %10, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %67
  %87 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %88 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = call i32 @dev_kfree_skb(%struct.sk_buff* %94)
  br label %158

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96, %47
  %98 = load i8*, i8** %13, align 8
  %99 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* @ETH_ALEN, align 8
  %103 = call i32 @memcpy(i8* %98, i32 %101, i64 %102)
  %104 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %97
  %112 = load i8*, i8** %13, align 8
  %113 = load i64, i64* @ETH_ALEN, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* @ETH_ALEN, align 8
  %119 = call i32 @memcpy(i8* %114, i32 %117, i64 %118)
  br label %129

120:                                              ; preds = %97
  %121 = load i8*, i8** %13, align 8
  %122 = load i64, i64* @ETH_ALEN, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* @ETH_ALEN, align 8
  %128 = call i32 @memcpy(i8* %123, i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %120, %111
  %130 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %131 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %132 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = call i32 @eth_type_trans(%struct.sk_buff* %130, %struct.TYPE_5__* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @CHECKSUM_NONE, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %141 = call i32 @netif_rx(%struct.sk_buff* %140)
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 12, %142
  %144 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %145 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %143
  store i32 %150, i32* %148, align 4
  %151 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %152 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %129, %86, %39
  ret void
}

declare dso_local i32 @atmel_copy_to_host(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
