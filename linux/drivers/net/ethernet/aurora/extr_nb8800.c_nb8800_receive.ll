; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nb8800_priv = type { i32, %struct.TYPE_5__*, %struct.nb8800_rx_desc* }
%struct.TYPE_5__ = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.nb8800_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { i32 }

@RX_COPYBREAK = common dso_local global i32 0, align 4
@RX_COPYHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rx skb allocation failed\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"rx buffer allocation failed\0A\00", align 1
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @nb8800_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nb8800_receive(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nb8800_priv*, align 8
  %8 = alloca %struct.nb8800_rx_desc*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.nb8800_priv* %17, %struct.nb8800_priv** %7, align 8
  %18 = load %struct.nb8800_priv*, %struct.nb8800_priv** %7, align 8
  %19 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %18, i32 0, i32 2
  %20 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %20, i64 %22
  store %struct.nb8800_rx_desc* %23, %struct.nb8800_rx_desc** %8, align 8
  %24 = load %struct.nb8800_priv*, %struct.nb8800_priv** %7, align 8
  %25 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.page*, %struct.page** %30, align 8
  store %struct.page* %31, %struct.page** %9, align 8
  %32 = load %struct.nb8800_priv*, %struct.nb8800_priv** %7, align 8
  %33 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = call i8* @page_address(%struct.page* %40)
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  store i8* %44, i8** %11, align 8
  %45 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %8, align 8
  %46 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RX_COPYBREAK, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = load i32, i32* %6, align 4
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @RX_COPYHDR, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %14, align 4
  %58 = load %struct.nb8800_priv*, %struct.nb8800_priv** %7, align 8
  %59 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.sk_buff* @napi_alloc_skb(i32* %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %13, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @netdev_err(%struct.net_device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %144

72:                                               ; preds = %56
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @RX_COPYBREAK, align 4
  %75 = icmp ule i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %82 = call i32 @dma_sync_single_for_cpu(i32* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @skb_put_data(%struct.sk_buff* %83, i8* %84, i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %92 = call i32 @dma_sync_single_for_device(i32* %88, i32 %89, i32 %90, i32 %91)
  br label %134

93:                                               ; preds = %72
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @nb8800_alloc_rx(%struct.net_device* %94, i32 %95, i32 1)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = call i32 @netdev_err(%struct.net_device* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %108 = call i32 @dev_kfree_skb(%struct.sk_buff* %107)
  br label %144

109:                                              ; preds = %93
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @RX_BUF_SIZE, align 4
  %114 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %115 = call i32 @dma_unmap_page(i32* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* @RX_COPYHDR, align 4
  %119 = call i32 @skb_put_data(%struct.sk_buff* %116, i8* %117, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %122 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.page*, %struct.page** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @RX_COPYHDR, align 4
  %128 = add i32 %126, %127
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @RX_COPYHDR, align 4
  %131 = sub i32 %129, %130
  %132 = load i32, i32* @RX_BUF_SIZE, align 4
  %133 = call i32 @skb_add_rx_frag(%struct.sk_buff* %120, i32 %124, %struct.page* %125, i32 %128, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %109, %76
  %135 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = call i32 @eth_type_trans(%struct.sk_buff* %135, %struct.net_device* %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.nb8800_priv*, %struct.nb8800_priv** %7, align 8
  %141 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %140, i32 0, i32 0
  %142 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %143 = call i32 @napi_gro_receive(i32* %141, %struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %134, %99, %64
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @nb8800_alloc_rx(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
