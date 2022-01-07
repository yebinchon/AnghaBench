; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nixge_priv = type { i64, %struct.nixge_hw_dma_bd*, i32, i64 }
%struct.nixge_hw_dma_bd = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }

@XAXIDMA_BD_STS_COMPLETE_MASK = common dso_local global i32 0, align 4
@sw_id_offset = common dso_local global i32 0, align 4
@XAXIDMA_BD_STS_ACTUAL_LEN_MASK = common dso_local global i32 0, align 4
@NIXGE_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@phys = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Failed to map ...\0A\00", align 1
@RX_BD_NUM = common dso_local global i32 0, align 4
@XAXIDMA_RX_TDESC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nixge_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_recv(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nixge_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nixge_hw_dma_bd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.nixge_priv* %16, %struct.nixge_priv** %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %18 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %17, i32 0, i32 1
  %19 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %18, align 8
  %20 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %21 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %19, i64 %22
  store %struct.nixge_hw_dma_bd* %23, %struct.nixge_hw_dma_bd** %9, align 8
  br label %24

24:                                               ; preds = %121, %2
  %25 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %26 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XAXIDMA_BD_STS_COMPLETE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %24
  %36 = phi i1 [ false, %24 ], [ %34, %31 ]
  br i1 %36, label %37, label %151

37:                                               ; preds = %35
  %38 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %39 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %42 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = mul i64 8, %43
  %45 = add i64 %40, %44
  store i64 %45, i64* %10, align 8
  %46 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %47 = load i32, i32* @sw_id_offset, align 4
  %48 = call i64 @nixge_hw_dma_bd_get_addr(%struct.nixge_hw_dma_bd* %46, i32 %47)
  %49 = inttoptr i64 %48 to %struct.sk_buff*
  store %struct.sk_buff* %49, %struct.sk_buff** %7, align 8
  %50 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %51 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XAXIDMA_BD_STS_ACTUAL_LEN_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @NIXGE_MAX_JUMBO_FRAME_SIZE, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %37
  %59 = load i32, i32* @NIXGE_MAX_JUMBO_FRAME_SIZE, align 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %58, %37
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %66 = load i32, i32* @phys, align 4
  %67 = call i64 @nixge_hw_dma_bd_get_addr(%struct.nixge_hw_dma_bd* %65, i32 %66)
  %68 = load i32, i32* @NIXGE_MAX_JUMBO_FRAME_SIZE, align 4
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_unmap_single(i32 %64, i64 %67, i32 %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @skb_put(%struct.sk_buff* %71, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i32 @eth_type_trans(%struct.sk_buff* %74, %struct.net_device* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %79)
  %81 = load i32, i32* @CHECKSUM_NONE, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %85 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %84, i32 0, i32 2
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @napi_gro_receive(i32* %85, %struct.sk_buff* %86)
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load i32, i32* @NIXGE_MAX_JUMBO_FRAME_SIZE, align 4
  %95 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %93, i32 %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %8, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %60
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %3, align 4
  br label %173

100:                                              ; preds = %60
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NIXGE_MAX_JUMBO_FRAME_SIZE, align 4
  %109 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %110 = call i64 @dma_map_single(i32 %104, i32 %107, i32 %108, i32 %109)
  store i64 %110, i64* %11, align 8
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @dma_mapping_error(i32 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = call i32 @netdev_err(%struct.net_device* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %100
  %122 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @nixge_hw_dma_bd_set_phys(%struct.nixge_hw_dma_bd* %122, i64 %123)
  %125 = load i32, i32* @NIXGE_MAX_JUMBO_FRAME_SIZE, align 4
  %126 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %127 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %129 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  %130 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %9, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = ptrtoint %struct.sk_buff* %131 to i64
  %133 = call i32 @nixge_hw_dma_bd_set_offset(%struct.nixge_hw_dma_bd* %130, i64 %132)
  %134 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %135 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load i32, i32* @RX_BD_NUM, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %141 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = urem i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %145 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %144, i32 0, i32 1
  %146 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %145, align 8
  %147 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %148 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %146, i64 %149
  store %struct.nixge_hw_dma_bd* %150, %struct.nixge_hw_dma_bd** %9, align 8
  br label %24

151:                                              ; preds = %35
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %152
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.net_device*, %struct.net_device** %4, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %158
  store i32 %163, i32* %161, align 4
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %151
  %167 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %168 = load i32, i32* @XAXIDMA_RX_TDESC_OFFSET, align 4
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @nixge_dma_write_desc_reg(%struct.nixge_priv* %167, i32 %168, i64 %169)
  br label %171

171:                                              ; preds = %166, %151
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %98
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nixge_hw_dma_bd_get_addr(%struct.nixge_hw_dma_bd*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @nixge_hw_dma_bd_set_phys(%struct.nixge_hw_dma_bd*, i64) #1

declare dso_local i32 @nixge_hw_dma_bd_set_offset(%struct.nixge_hw_dma_bd*, i64) #1

declare dso_local i32 @nixge_dma_write_desc_reg(%struct.nixge_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
