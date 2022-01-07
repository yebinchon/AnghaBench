; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_allocate_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_allocate_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i32, i32, i32*, i32, i32 }
%struct.knav_dma_desc = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"out of rx pool desc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NETCP_PACKET_SIZE = common dso_local global i32 0, align 4
@NETCP_SOP_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Primary RX buffer alloc failed\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Secondary page alloc failed\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@KNAV_DMA_DESC_PS_INFO_IN_DESC = common dso_local global i32 0, align 4
@KNAV_DMA_DESC_PKT_LEN_MASK = common dso_local global i32 0, align 4
@KNAV_DMA_DESC_HAS_EPIB = common dso_local global i32 0, align 4
@KNAV_DMA_NUM_PS_WORDS = common dso_local global i32 0, align 4
@KNAV_DMA_DESC_PSLEN_SHIFT = common dso_local global i32 0, align 4
@KNAV_DMA_DESC_RETQ_MASK = common dso_local global i32 0, align 4
@KNAV_DMA_DESC_RETQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netcp_intf*, i32)* @netcp_allocate_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netcp_allocate_rx_buf(%struct.netcp_intf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netcp_intf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.knav_dma_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store %struct.netcp_intf* %0, %struct.netcp_intf** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %17 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.knav_dma_desc* @knav_pool_desc_get(i32 %18)
  store %struct.knav_dma_desc* %19, %struct.knav_dma_desc** %6, align 8
  %20 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %21 = call i64 @IS_ERR_OR_NULL(%struct.knav_dma_desc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %25 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %168

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %30
  %37 = load i32, i32* @NETCP_PACKET_SIZE, align 4
  %38 = load i32, i32* @NETCP_SOP_OFFSET, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @SKB_DATA_ALIGN(i32 %40)
  %42 = call i32 @SKB_DATA_ALIGN(i32 4)
  %43 = add i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i8* @netdev_alloc_frag(i32 %44)
  store i8* %45, i8** %13, align 8
  %46 = load i32, i32* %15, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %36
  %55 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %56 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn_ratelimited(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %160

59:                                               ; preds = %36
  %60 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %61 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @dma_map_single(i32 %62, i8* %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %68 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @dma_mapping_error(i32 %69, i32 %70)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %160

75:                                               ; preds = %59
  %76 = load i8*, i8** %13, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  br label %108

79:                                               ; preds = %30
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = load i32, i32* @GFP_DMA, align 4
  %82 = or i32 %80, %81
  %83 = call %struct.page* @alloc_page(i32 %82)
  store %struct.page* %83, %struct.page** %11, align 8
  %84 = load %struct.page*, %struct.page** %11, align 8
  %85 = icmp ne %struct.page* %84, null
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %92 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_warn_ratelimited(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %160

95:                                               ; preds = %79
  %96 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %96, i32* %7, align 4
  %97 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %98 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.page*, %struct.page** %11, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @DMA_TO_DEVICE, align 4
  %103 = call i32 @dma_map_page(i32 %99, %struct.page* %100, i32 0, i32 %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.page*, %struct.page** %11, align 8
  %105 = ptrtoint %struct.page* %104 to i32
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %95, %75
  %109 = load i32, i32* @KNAV_DMA_DESC_PS_INFO_IN_DESC, align 4
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @KNAV_DMA_DESC_PKT_LEN_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @KNAV_DMA_DESC_HAS_EPIB, align 4
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @KNAV_DMA_NUM_PS_WORDS, align 4
  %117 = load i32, i32* @KNAV_DMA_DESC_PSLEN_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %122 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @KNAV_DMA_DESC_RETQ_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @KNAV_DMA_DESC_RETQ_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %133 = call i32 @set_org_pkt_info(i32 %130, i32 %131, %struct.knav_dma_desc* %132)
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %137 = call i32 @SET_SW_DATA0(i32 %135, %struct.knav_dma_desc* %136)
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %141 = call i32 @SET_SW_DATA1(i32 %139, %struct.knav_dma_desc* %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %145 = call i32 @set_desc_info(i32 %142, i32 %143, %struct.knav_dma_desc* %144)
  %146 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %147 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %150 = call i32 @knav_pool_desc_map(i32 %148, %struct.knav_dma_desc* %149, i32 4, i32* %12, i32* %8)
  %151 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %152 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @knav_queue_push(i32 %157, i32 %158, i32 4, i32 0)
  store i32 0, i32* %3, align 4
  br label %168

160:                                              ; preds = %90, %74, %54
  %161 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %162 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %165 = call i32 @knav_pool_desc_put(i32 %163, %struct.knav_dma_desc* %164)
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %160, %108, %23
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.knav_dma_desc* @knav_pool_desc_get(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.knav_dma_desc*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i8* @netdev_alloc_frag(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_org_pkt_info(i32, i32, %struct.knav_dma_desc*) #1

declare dso_local i32 @SET_SW_DATA0(i32, %struct.knav_dma_desc*) #1

declare dso_local i32 @SET_SW_DATA1(i32, %struct.knav_dma_desc*) #1

declare dso_local i32 @set_desc_info(i32, i32, %struct.knav_dma_desc*) #1

declare dso_local i32 @knav_pool_desc_map(i32, %struct.knav_dma_desc*, i32, i32*, i32*) #1

declare dso_local i32 @knav_queue_push(i32, i32, i32, i32) #1

declare dso_local i32 @knav_pool_desc_put(i32, %struct.knav_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
