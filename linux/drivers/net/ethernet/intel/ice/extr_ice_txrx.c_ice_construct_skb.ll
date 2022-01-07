; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_construct_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_construct_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ice_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ice_rx_buf = type { i32, i32, i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@ICE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ICE_RXBUF_2048 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ice_ring*, %struct.ice_rx_buf*, i32)* @ice_construct_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ice_construct_skb(%struct.ice_ring* %0, %struct.ice_rx_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ice_ring*, align 8
  %6 = alloca %struct.ice_rx_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %5, align 8
  store %struct.ice_rx_buf* %1, %struct.ice_rx_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %6, align 8
  %13 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @page_address(i32 %14)
  %16 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %6, align 8
  %17 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %15, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @prefetch(i8* %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @L1_CACHE_BYTES, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %23, i64 %25
  %27 = call i32 @prefetch(i8* %26)
  %28 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %29 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @ICE_RX_HDR_SIZE, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = load i32, i32* @__GFP_NOWARN, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.sk_buff* @__napi_alloc_skb(i32* %31, i32 %32, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %98

44:                                               ; preds = %3
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @skb_record_rx_queue(%struct.sk_buff* %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ICE_RX_HDR_SIZE, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* @ICE_RX_HDR_SIZE, align 4
  %60 = call i32 @eth_get_headlen(i32 %57, i8* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %54, %44
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @__skb_put(%struct.sk_buff* %62, i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ALIGN(i32 %66, i32 8)
  %68 = call i32 @memcpy(i32 %64, i8* %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %61
  %75 = load i32, i32* @ICE_RXBUF_2048, align 4
  store i32 %75, i32* %11, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %6, align 8
  %78 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %6, align 8
  %81 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @skb_add_rx_frag(%struct.sk_buff* %76, i32 0, i32 %79, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ice_rx_buf_adjust_pg_offset(%struct.ice_rx_buf* %88, i32 %89)
  br label %96

91:                                               ; preds = %61
  %92 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %6, align 8
  %93 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %74
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %97, %struct.sk_buff** %4, align 8
  br label %98

98:                                               ; preds = %96, %43
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %99
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local %struct.sk_buff* @__napi_alloc_skb(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_get_headlen(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ice_rx_buf_adjust_pg_offset(%struct.ice_rx_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
