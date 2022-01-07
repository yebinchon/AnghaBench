; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_write_tx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_write_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cmdQ = type { i32, %struct.cmdQ_ce*, %struct.cmdQ_e* }
%struct.cmdQ_ce = type { %struct.sk_buff* }
%struct.cmdQ_e = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@F_CMD_DATAVALID = common dso_local global i32 0, align 4
@F_CMD_SOP = common dso_local global i32 0, align 4
@SGE_TX_DESC_MAX_PLEN = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sk_buff*, i32, i32, %struct.cmdQ*)* @write_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tx_descs(%struct.adapter* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.cmdQ* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmdQ*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmdQ_e*, align 8
  %14 = alloca %struct.cmdQ_e*, align 8
  %15 = alloca %struct.cmdQ_ce*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.cmdQ* %4, %struct.cmdQ** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %20, align 4
  %26 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %27 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %26, i32 0, i32 2
  %28 = load %struct.cmdQ_e*, %struct.cmdQ_e** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %28, i64 %30
  store %struct.cmdQ_e* %31, %struct.cmdQ_e** %14, align 8
  store %struct.cmdQ_e* %31, %struct.cmdQ_e** %13, align 8
  %32 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %33 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %32, i32 0, i32 1
  %34 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %34, i64 %36
  store %struct.cmdQ_ce* %37, %struct.cmdQ_ce** %15, align 8
  %38 = load %struct.adapter*, %struct.adapter** %6, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @skb_headlen(%struct.sk_buff* %44)
  %46 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %47 = call i64 @pci_map_single(%struct.TYPE_4__* %40, i32 %43, i32 %45, i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @skb_headlen(%struct.sk_buff* %49)
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* @F_CMD_DATAVALID, align 4
  %52 = load i32, i32* @F_CMD_SOP, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %20, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %5
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %59 = icmp ule i32 %57, %58
  br label %60

60:                                               ; preds = %56, %5
  %61 = phi i1 [ false, %5 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @V_CMD_EOP(i32 %62)
  %64 = or i32 %53, %63
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @V_CMD_GEN2(i32 %65)
  %67 = or i32 %64, %66
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %19, align 4
  br label %75

73:                                               ; preds = %60
  %74 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %18, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %79 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = trunc i64 %80 to i32
  %82 = ashr i32 %81, 32
  %83 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %84 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @V_CMD_LEN(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @V_CMD_GEN1(i32 %87)
  %89 = or i32 %86, %88
  %90 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %91 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %93 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %92, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %93, align 8
  %94 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %95 = load i32, i32* @dma_len, align 4
  %96 = call i32 @dma_unmap_len_set(%struct.cmdQ_ce* %94, i32 %95, i32 0)
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %149

100:                                              ; preds = %75
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %149

104:                                              ; preds = %100
  %105 = load i32, i32* %18, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %12, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %12, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = sub i32 %110, %109
  store i32 %111, i32* %19, align 4
  %112 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %113 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %112, i32 1
  store %struct.cmdQ_e* %113, %struct.cmdQ_e** %14, align 8
  %114 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %115 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %114, i32 1
  store %struct.cmdQ_ce* %115, %struct.cmdQ_ce** %15, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %119 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = xor i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %126 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %125, i32 0, i32 2
  %127 = load %struct.cmdQ_e*, %struct.cmdQ_e** %126, align 8
  store %struct.cmdQ_e* %127, %struct.cmdQ_e** %14, align 8
  %128 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %129 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %128, i32 0, i32 1
  %130 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %129, align 8
  store %struct.cmdQ_ce* %130, %struct.cmdQ_ce** %15, align 8
  br label %131

131:                                              ; preds = %122, %104
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %135 = call i32 @write_large_page_tx_descs(i32 %132, %struct.cmdQ_e** %14, %struct.cmdQ_ce** %15, i32* %9, i64* %12, i32* %19, i32 %133, %struct.cmdQ* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %19, align 4
  %137 = call i64 @likely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %20, align 4
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @write_tx_desc(%struct.cmdQ_e* %140, i64 %141, i32 %142, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %139, %131
  br label %149

149:                                              ; preds = %148, %100, %75
  %150 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %151 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %150, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %151, align 8
  %152 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %153 = load i32, i32* @dma_addr, align 4
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @dma_unmap_addr_set(%struct.cmdQ_ce* %152, i32 %153, i64 %154)
  %156 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %157 = load i32, i32* @dma_len, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = call i32 @skb_headlen(%struct.sk_buff* %158)
  %160 = call i32 @dma_unmap_len_set(%struct.cmdQ_ce* %156, i32 %157, i32 %159)
  store i32 0, i32* %16, align 4
  br label %161

161:                                              ; preds = %233, %149
  %162 = load i32, i32* %20, align 4
  %163 = add i32 %162, -1
  store i32 %163, i32* %20, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %236

165:                                              ; preds = %161
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %166)
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32* %172, i32** %21, align 8
  %173 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %174 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %173, i32 1
  store %struct.cmdQ_e* %174, %struct.cmdQ_e** %14, align 8
  %175 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %176 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %175, i32 1
  store %struct.cmdQ_ce* %176, %struct.cmdQ_ce** %15, align 8
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %8, align 4
  %179 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %180 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %178, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = xor i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %187 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %186, i32 0, i32 2
  %188 = load %struct.cmdQ_e*, %struct.cmdQ_e** %187, align 8
  store %struct.cmdQ_e* %188, %struct.cmdQ_e** %14, align 8
  %189 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %190 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %189, i32 0, i32 1
  %191 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %190, align 8
  store %struct.cmdQ_ce* %191, %struct.cmdQ_ce** %15, align 8
  br label %192

192:                                              ; preds = %183, %165
  %193 = load %struct.adapter*, %struct.adapter** %6, align 8
  %194 = getelementptr inbounds %struct.adapter, %struct.adapter* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32*, i32** %21, align 8
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @skb_frag_size(i32* %198)
  %200 = load i32, i32* @DMA_TO_DEVICE, align 4
  %201 = call i64 @skb_frag_dma_map(i32* %196, i32* %197, i32 0, i32 %199, i32 %200)
  store i64 %201, i64* %11, align 8
  %202 = load i64, i64* %11, align 8
  store i64 %202, i64* %12, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = call i32 @skb_frag_size(i32* %203)
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %20, align 4
  %207 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %208 = call i32 @write_large_page_tx_descs(i32 %205, %struct.cmdQ_e** %14, %struct.cmdQ_ce** %15, i32* %9, i64* %12, i32* %19, i32 %206, %struct.cmdQ* %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %19, align 4
  %210 = call i64 @likely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %192
  %213 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %214 = load i64, i64* %12, align 8
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %20, align 4
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @write_tx_desc(%struct.cmdQ_e* %213, i64 %214, i32 %215, i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %212, %192
  %222 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %223 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %222, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %223, align 8
  %224 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %225 = load i32, i32* @dma_addr, align 4
  %226 = load i64, i64* %11, align 8
  %227 = call i32 @dma_unmap_addr_set(%struct.cmdQ_ce* %224, i32 %225, i64 %226)
  %228 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %229 = load i32, i32* @dma_len, align 4
  %230 = load i32*, i32** %21, align 8
  %231 = call i32 @skb_frag_size(i32* %230)
  %232 = call i32 @dma_unmap_len_set(%struct.cmdQ_ce* %228, i32 %229, i32 %231)
  br label %233

233:                                              ; preds = %221
  %234 = load i32, i32* %16, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %161

236:                                              ; preds = %161
  %237 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %238 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %239 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %238, i32 0, i32 0
  store %struct.sk_buff* %237, %struct.sk_buff** %239, align 8
  %240 = call i32 (...) @wmb()
  %241 = load i32, i32* %17, align 4
  %242 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %243 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @pci_map_single(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @V_CMD_EOP(i32) #1

declare dso_local i32 @V_CMD_GEN2(i32) #1

declare dso_local i32 @V_CMD_LEN(i32) #1

declare dso_local i32 @V_CMD_GEN1(i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.cmdQ_ce*, i32, i32) #1

declare dso_local i32 @write_large_page_tx_descs(i32, %struct.cmdQ_e**, %struct.cmdQ_ce**, i32*, i64*, i32*, i32, %struct.cmdQ*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @write_tx_desc(%struct.cmdQ_e*, i64, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.cmdQ_ce*, i32, i64) #1

declare dso_local i64 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
