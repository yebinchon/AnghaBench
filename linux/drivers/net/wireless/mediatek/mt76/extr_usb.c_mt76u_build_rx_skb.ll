; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_build_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_build_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@MT_SKB_HEAD_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i8*, i32, i32)* @mt76u_build_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mt76u_build_rx_skb(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.page*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @SKB_WITH_OVERHEAD(i32 %10)
  %12 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = icmp slt i64 %11, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %3
  %18 = load i64, i64* @MT_SKB_HEAD_LEN, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %72

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = load i64, i64* @MT_SKB_HEAD_LEN, align 8
  %30 = call i32 @skb_put_data(%struct.sk_buff* %25, i8* %28, i64 %29)
  %31 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %32 = load i64, i64* @MT_SKB_HEAD_LEN, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr i8, i8* %34, i64 %33
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call %struct.page* @virt_to_head_page(i8* %36)
  store %struct.page* %37, %struct.page** %9, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.page*, %struct.page** %9, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = call i32 @page_address(%struct.page* %45)
  %47 = sext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr i8, i8* %44, i64 %48
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @MT_SKB_HEAD_LEN, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @skb_add_rx_frag(%struct.sk_buff* %38, i32 %42, %struct.page* %43, i8* %49, i64 %53, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %4, align 8
  br label %72

57:                                               ; preds = %3
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.sk_buff* @build_skb(i8* %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %8, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %72

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %67 = call i32 @skb_reserve(%struct.sk_buff* %65, i64 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @__skb_put(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %4, align 8
  br label %72

72:                                               ; preds = %64, %63, %24, %23
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %73
}

declare dso_local i64 @SKB_WITH_OVERHEAD(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i8*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
