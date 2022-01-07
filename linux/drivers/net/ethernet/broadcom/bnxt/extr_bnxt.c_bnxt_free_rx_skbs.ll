; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_rx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_rx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, i32, i32, i64, %struct.bnxt_rx_ring_info*, %struct.pci_dev* }
%struct.bnxt_rx_ring_info = type { %struct.bnxt_tpa_idx_map*, %struct.page*, i32, %struct.bnxt_sw_rx_agg_bd*, i32, %struct.bnxt_sw_rx_bd*, %struct.bnxt_tpa_info* }
%struct.bnxt_tpa_idx_map = type { i32 }
%struct.page = type { i32 }
%struct.bnxt_sw_rx_agg_bd = type { %struct.page*, i32 }
%struct.bnxt_sw_rx_bd = type { i32*, i32 }
%struct.bnxt_tpa_info = type { i32*, i32 }
%struct.pci_dev = type { i32 }

@RX_DESC_CNT = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BNXT_RX_PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_rx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_rx_skbs(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.bnxt_rx_ring_info*, align 8
  %8 = alloca %struct.bnxt_tpa_idx_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt_tpa_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bnxt_sw_rx_bd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.bnxt_sw_rx_agg_bd*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 7
  %22 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %21, align 8
  %23 = icmp ne %struct.bnxt_rx_ring_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %231

25:                                               ; preds = %1
  %26 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RX_DESC_CNT, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RX_DESC_CNT, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %228, %25
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %231

42:                                               ; preds = %36
  %43 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 7
  %45 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %45, i64 %47
  store %struct.bnxt_rx_ring_info* %48, %struct.bnxt_rx_ring_info** %7, align 8
  %49 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %50 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %49, i32 0, i32 6
  %51 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %50, align 8
  %52 = icmp ne %struct.bnxt_tpa_info* %51, null
  br i1 %52, label %53, label %96

53:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %92, %53
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %57 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %54
  %61 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %62 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %61, i32 0, i32 6
  %63 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %63, i64 %65
  store %struct.bnxt_tpa_info* %66, %struct.bnxt_tpa_info** %10, align 8
  %67 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %10, align 8
  %68 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to i8*
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  br label %92

74:                                               ; preds = %60
  %75 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %10, align 8
  %78 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %81 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %87 = call i32 @dma_unmap_single_attrs(i32* %76, i32 %79, i32 %82, i32 %85, i32 %86)
  %88 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %10, align 8
  %89 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @kfree(i8* %90)
  br label %92

92:                                               ; preds = %74, %73
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %54

95:                                               ; preds = %54
  br label %96

96:                                               ; preds = %95, %42
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %161, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %164

101:                                              ; preds = %97
  %102 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %103 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %102, i32 0, i32 5
  %104 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %104, i64 %106
  store %struct.bnxt_sw_rx_bd* %107, %struct.bnxt_sw_rx_bd** %12, align 8
  %108 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %12, align 8
  %109 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %13, align 4
  %111 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %12, align 8
  %112 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to i8*
  store i8* %114, i8** %14, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %101
  br label %161

118:                                              ; preds = %101
  %119 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %12, align 8
  %120 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %119, i32 0, i32 0
  store i32* null, i32** %120, align 8
  %121 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %122 = call i64 @BNXT_RX_PAGE_MODE(%struct.bnxt* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %118
  %125 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %126 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %13, align 4
  %132 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %133 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %137 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %140 = call i32 @dma_unmap_page_attrs(i32* %133, i32 %134, i32 %135, i32 %138, i32 %139)
  %141 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %142 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = call i32 @page_pool_recycle_direct(i32 %143, i8* %144)
  br label %160

146:                                              ; preds = %118
  %147 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %151 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %154 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %157 = call i32 @dma_unmap_single_attrs(i32* %148, i32 %149, i32 %152, i32 %155, i32 %156)
  %158 = load i8*, i8** %14, align 8
  %159 = call i32 @kfree(i8* %158)
  br label %160

160:                                              ; preds = %146, %124
  br label %161

161:                                              ; preds = %160, %117
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %97

164:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %201, %164
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %204

169:                                              ; preds = %165
  %170 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %171 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %170, i32 0, i32 3
  %172 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %172, i64 %174
  store %struct.bnxt_sw_rx_agg_bd* %175, %struct.bnxt_sw_rx_agg_bd** %15, align 8
  %176 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %15, align 8
  %177 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %176, i32 0, i32 0
  %178 = load %struct.page*, %struct.page** %177, align 8
  store %struct.page* %178, %struct.page** %16, align 8
  %179 = load %struct.page*, %struct.page** %16, align 8
  %180 = icmp ne %struct.page* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %169
  br label %201

182:                                              ; preds = %169
  %183 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %184 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %183, i32 0, i32 0
  %185 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %15, align 8
  %186 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BNXT_RX_PAGE_SIZE, align 4
  %189 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %190 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %191 = call i32 @dma_unmap_page_attrs(i32* %184, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %15, align 8
  %193 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %192, i32 0, i32 0
  store %struct.page* null, %struct.page** %193, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %196 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @__clear_bit(i32 %194, i32 %197)
  %199 = load %struct.page*, %struct.page** %16, align 8
  %200 = call i32 @__free_page(%struct.page* %199)
  br label %201

201:                                              ; preds = %182, %181
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %165

204:                                              ; preds = %165
  %205 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %206 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %205, i32 0, i32 1
  %207 = load %struct.page*, %struct.page** %206, align 8
  %208 = icmp ne %struct.page* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %211 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %210, i32 0, i32 1
  %212 = load %struct.page*, %struct.page** %211, align 8
  %213 = call i32 @__free_page(%struct.page* %212)
  %214 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %215 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %214, i32 0, i32 1
  store %struct.page* null, %struct.page** %215, align 8
  br label %216

216:                                              ; preds = %209, %204
  %217 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %218 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %217, i32 0, i32 0
  %219 = load %struct.bnxt_tpa_idx_map*, %struct.bnxt_tpa_idx_map** %218, align 8
  store %struct.bnxt_tpa_idx_map* %219, %struct.bnxt_tpa_idx_map** %8, align 8
  %220 = load %struct.bnxt_tpa_idx_map*, %struct.bnxt_tpa_idx_map** %8, align 8
  %221 = icmp ne %struct.bnxt_tpa_idx_map* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load %struct.bnxt_tpa_idx_map*, %struct.bnxt_tpa_idx_map** %8, align 8
  %224 = getelementptr inbounds %struct.bnxt_tpa_idx_map, %struct.bnxt_tpa_idx_map* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @memset(i32 %225, i32 0, i32 4)
  br label %227

227:                                              ; preds = %222, %216
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %3, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %3, align 4
  br label %36

231:                                              ; preds = %24, %36
  ret void
}

declare dso_local i32 @dma_unmap_single_attrs(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @BNXT_RX_PAGE_MODE(%struct.bnxt*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @page_pool_recycle_direct(i32, i8*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
