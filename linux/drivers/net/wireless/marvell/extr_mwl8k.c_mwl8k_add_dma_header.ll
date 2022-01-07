; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_add_dma_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_add_dma_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.mwl8k_dma_data = type { i32, %struct.ieee80211_hdr }

@REDUCED_TX_HEADROOM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to reallocate TX buffer\0A\00", align 1
@IEEE80211_QOS_CTL_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl8k_priv*, %struct.sk_buff*, i32, i32)* @mwl8k_add_dma_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_add_dma_header(%struct.mwl8k_priv* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mwl8k_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mwl8k_dma_data*, align 8
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %9, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee80211_hdrlen(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @REDUCED_TX_HEADROOM, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @REDUCED_TX_HEADROOM, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i64 @pskb_expand_head(%struct.sk_buff* %33, i32 %34, i32 0, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wiphy_err(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %121

45:                                               ; preds = %32
  %46 = load i32, i32* @REDUCED_TX_HEADROOM, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %25, %4
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 8, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @skb_push(%struct.sk_buff* %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ieee80211_is_data_qos(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i64, i64* @IEEE80211_QOS_CTL_LEN, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.mwl8k_dma_data*
  store %struct.mwl8k_dma_data* %81, %struct.mwl8k_dma_data** %12, align 8
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %83 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %12, align 8
  %84 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %83, i32 0, i32 1
  %85 = icmp ne %struct.ieee80211_hdr* %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %12, align 8
  %88 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %87, i32 0, i32 1
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @memmove(%struct.ieee80211_hdr* %88, %struct.ieee80211_hdr* %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %77
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %94, 4
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %12, align 8
  %98 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %97, i32 0, i32 1
  %99 = bitcast %struct.ieee80211_hdr* %98 to i8*
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr i8, i8* %99, i64 %101
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 4, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memset(i8* %102, i32 0, i32 %106)
  br label %108

108:                                              ; preds = %96, %92
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 %112, 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %113, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @cpu_to_le16(i32 %117)
  %119 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %12, align 8
  %120 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %108, %38
  ret void
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @memmove(%struct.ieee80211_hdr*, %struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
