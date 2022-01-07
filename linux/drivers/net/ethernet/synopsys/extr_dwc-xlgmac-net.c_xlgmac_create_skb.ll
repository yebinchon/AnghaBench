; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_create_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_create_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xlgmac_pdata = type { i32 }
%struct.napi_struct = type { i32 }
%struct.xlgmac_desc_data = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xlgmac_pdata*, %struct.napi_struct*, %struct.xlgmac_desc_data*, i32)* @xlgmac_create_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xlgmac_create_skb(%struct.xlgmac_pdata* %0, %struct.napi_struct* %1, %struct.xlgmac_desc_data* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xlgmac_pdata*, align 8
  %7 = alloca %struct.napi_struct*, align 8
  %8 = alloca %struct.xlgmac_desc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32*, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %6, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %7, align 8
  store %struct.xlgmac_desc_data* %2, %struct.xlgmac_desc_data** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %14 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %15 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct* %13, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %144

23:                                               ; preds = %4
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %25 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %28 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %33 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %38 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_sync_single_range_for_cpu(i32 %26, i32 %31, i32 %36, i32 %41, i32 %42)
  %44 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %45 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @page_address(i32 %49)
  %51 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %52 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %50, i64 %57
  store i32* %58, i32** %12, align 8
  %59 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %60 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %23
  %65 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %66 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  br label %71

69:                                               ; preds = %23
  %70 = load i32, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi i32 [ %68, %64 ], [ %70, %69 ]
  store i32 %72, i32* %10, align 4
  %73 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %74 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @min(i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %80, i32* %81, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @skb_put(%struct.sk_buff* %84, i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %71
  %93 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %94 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %97 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %102 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %107 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %112 = call i32 @dma_sync_single_range_for_cpu(i32 %95, i32 %100, i32 %105, i32 %110, i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %115 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %119 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %125 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %132 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @skb_add_rx_frag(%struct.sk_buff* %113, i32 %117, i32* %123, i32 %129, i32 %130, i32 %135)
  %137 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %8, align 8
  %138 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %92, %71
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %143, %struct.sk_buff** %5, align 8
  br label %144

144:                                              ; preds = %142, %22
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %145
}

declare dso_local %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct*, i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
