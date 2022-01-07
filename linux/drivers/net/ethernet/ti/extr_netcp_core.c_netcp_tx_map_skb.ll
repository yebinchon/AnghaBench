; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_tx_map_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_tx_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_dma_desc = type { i64, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.netcp_intf = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to map skb buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"out of TX desc\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to map skb page\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"out of TX desc for frags\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"NETIF_F_FRAGLIST not supported\0A\00", align 1
@KNAV_DMA_DESC_PKT_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.knav_dma_desc* (%struct.sk_buff*, %struct.netcp_intf*)* @netcp_tx_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.knav_dma_desc* @netcp_tx_map_skb(%struct.sk_buff* %0, %struct.netcp_intf* %1) #0 {
  %3 = alloca %struct.knav_dma_desc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netcp_intf*, align 8
  %6 = alloca %struct.knav_dma_desc*, align 8
  %7 = alloca %struct.knav_dma_desc*, align 8
  %8 = alloca %struct.knav_dma_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netcp_intf* %1, %struct.netcp_intf** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_headlen(%struct.sk_buff* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %23 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %22, i32 0, i32 2
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %10, align 8
  %25 = load %struct.device*, %struct.device** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i64 @dma_map_single(%struct.device* %25, i32 %28, i32 %29, i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @dma_mapping_error(%struct.device* %32, i64 %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %39 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.knav_dma_desc* null, %struct.knav_dma_desc** %3, align 8
  br label %206

42:                                               ; preds = %2
  %43 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %44 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.knav_dma_desc* @knav_pool_desc_get(i32 %45)
  store %struct.knav_dma_desc* %46, %struct.knav_dma_desc** %6, align 8
  %47 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %48 = call i64 @IS_ERR_OR_NULL(%struct.knav_dma_desc* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %52 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.device*, %struct.device** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(%struct.device* %55, i64 %56, i32 %57, i32 %58)
  store %struct.knav_dma_desc* null, %struct.knav_dma_desc** %3, align 8
  br label %206

60:                                               ; preds = %42
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %64 = call i32 @set_pkt_info(i64 %61, i32 %62, i32 0, %struct.knav_dma_desc* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i64 @skb_is_nonlinear(%struct.sk_buff* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = call i32 @prefetchw(%struct.TYPE_3__* %70)
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %74 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %187

75:                                               ; preds = %68
  %76 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  store %struct.knav_dma_desc* %76, %struct.knav_dma_desc** %8, align 8
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %162, %75
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %165

84:                                               ; preds = %77
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = call %struct.page* @skb_frag_page(i32* %92)
  store %struct.page* %93, %struct.page** %15, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @skb_frag_off(i32* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @skb_frag_size(i32* %96)
  store i32 %97, i32* %17, align 4
  %98 = load %struct.device*, %struct.device** %10, align 8
  %99 = load %struct.page*, %struct.page** %15, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @DMA_TO_DEVICE, align 4
  %103 = call i64 @dma_map_page(%struct.device* %98, %struct.page* %99, i32 %100, i32 %101, i32 %102)
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %84
  %111 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %112 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %202

115:                                              ; preds = %84
  %116 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %117 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.knav_dma_desc* @knav_pool_desc_get(i32 %118)
  store %struct.knav_dma_desc* %119, %struct.knav_dma_desc** %7, align 8
  %120 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  %121 = call i64 @IS_ERR_OR_NULL(%struct.knav_dma_desc* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %115
  %124 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %125 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.device*, %struct.device** %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_unmap_page(%struct.device* %128, i64 %129, i32 %130, i32 %131)
  br label %202

133:                                              ; preds = %115
  %134 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %135 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  %138 = call i64 @knav_pool_desc_virt_to_dma(i32 %136, %struct.knav_dma_desc* %137)
  store i64 %138, i64* %18, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i32, i32* %17, align 4
  %141 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  %142 = call i32 @set_pkt_info(i64 %139, i32 %140, i32 0, %struct.knav_dma_desc* %141)
  %143 = load i64, i64* %18, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %19, align 4
  %145 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %146 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %145, i32 0, i32 1
  %147 = call i32 @set_words(i32* %19, i32 1, i64* %146)
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %152 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %153 = icmp ne %struct.knav_dma_desc* %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %133
  %155 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %156 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %159 = call i32 @knav_pool_desc_map(i32 %157, %struct.knav_dma_desc* %158, i32 16, i64* %18, i32* %12)
  br label %160

160:                                              ; preds = %154, %133
  %161 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  store %struct.knav_dma_desc* %161, %struct.knav_dma_desc** %8, align 8
  br label %162

162:                                              ; preds = %160
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %77

165:                                              ; preds = %77
  %166 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %167 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %168 = icmp ne %struct.knav_dma_desc* %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %171 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %174 = call i32 @knav_pool_desc_map(i32 %172, %struct.knav_dma_desc* %173, i32 16, i64* %11, i32* %12)
  br label %175

175:                                              ; preds = %169, %165
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %176)
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %183 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dev_err_ratelimited(i32 %184, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %202

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %72
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %188, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @WARN_ON(i32 %193)
  %195 = load i32, i32* @KNAV_DMA_DESC_PKT_LEN_MASK, align 4
  %196 = load i32, i32* %9, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %9, align 4
  %198 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %199 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %198, i32 0, i32 0
  %200 = call i32 @set_words(i32* %9, i32 1, i64* %199)
  %201 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  store %struct.knav_dma_desc* %201, %struct.knav_dma_desc** %3, align 8
  br label %206

202:                                              ; preds = %181, %123, %110
  %203 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %204 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %205 = call i32 @netcp_free_tx_desc_chain(%struct.netcp_intf* %203, %struct.knav_dma_desc* %204, i32 16)
  store %struct.knav_dma_desc* null, %struct.knav_dma_desc** %3, align 8
  br label %206

206:                                              ; preds = %202, %187, %50, %37
  %207 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %3, align 8
  ret %struct.knav_dma_desc* %207
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.knav_dma_desc* @knav_pool_desc_get(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.knav_dma_desc*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @set_pkt_info(i64, i32, i32, %struct.knav_dma_desc*) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @prefetchw(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.page* @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i64 @knav_pool_desc_virt_to_dma(i32, %struct.knav_dma_desc*) #1

declare dso_local i32 @set_words(i32*, i32, i64*) #1

declare dso_local i32 @knav_pool_desc_map(i32, %struct.knav_dma_desc*, i32, i64*, i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @netcp_free_tx_desc_chain(%struct.netcp_intf*, %struct.knav_dma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
