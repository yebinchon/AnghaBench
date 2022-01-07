; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.atl1c_tpd_desc = type { i32, i8*, i8* }
%struct.atl1c_buffer = type { i64, i8*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i64, i32* }

@TPD_LSO_EN_SHIFT = common dso_local global i32 0, align 4
@TPD_LSO_EN_MASK = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ATL1C_BUFFER_BUSY = common dso_local global i32 0, align 4
@ATL1C_PCIMAP_SINGLE = common dso_local global i32 0, align 4
@ATL1C_PCIMAP_TODEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATL1C_PCIMAP_PAGE = common dso_local global i32 0, align 4
@TPD_EOP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*, %struct.sk_buff*, %struct.atl1c_tpd_desc*, i32)* @atl1c_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_tx_map(%struct.atl1c_adapter* %0, %struct.sk_buff* %1, %struct.atl1c_tpd_desc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atl1c_adapter*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.atl1c_tpd_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.atl1c_tpd_desc*, align 8
  %11 = alloca %struct.atl1c_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.atl1c_tpd_desc* %2, %struct.atl1c_tpd_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.atl1c_tpd_desc* null, %struct.atl1c_tpd_desc** %10, align 8
  store %struct.atl1c_buffer* null, %struct.atl1c_buffer** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i64 @skb_headlen(%struct.sk_buff* %20)
  store i64 %21, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %16, align 8
  %26 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %27 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TPD_LSO_EN_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @TPD_LSO_EN_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %92

35:                                               ; preds = %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i64 @skb_transport_offset(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i64 @tcp_hdrlen(%struct.sk_buff* %38)
  %40 = add nsw i64 %37, %39
  store i64 %40, i64* %15, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  store %struct.atl1c_tpd_desc* %41, %struct.atl1c_tpd_desc** %10, align 8
  %42 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %43 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %44 = call %struct.atl1c_buffer* @atl1c_get_tx_buffer(%struct.atl1c_adapter* %42, %struct.atl1c_tpd_desc* %43)
  store %struct.atl1c_buffer* %44, %struct.atl1c_buffer** %11, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %47 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %56 = call i8* @pci_map_single(%struct.TYPE_5__* %50, i64 %53, i64 %54, i32 %55)
  %57 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %58 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %63 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @pci_dma_mapping_error(%struct.TYPE_5__* %61, i8* %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %35
  br label %242

69:                                               ; preds = %35
  %70 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %71 = load i32, i32* @ATL1C_BUFFER_BUSY, align 4
  %72 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %70, i32 %71)
  %73 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %74 = load i32, i32* @ATL1C_PCIMAP_SINGLE, align 4
  %75 = load i32, i32* @ATL1C_PCIMAP_TODEVICE, align 4
  %76 = call i32 @ATL1C_SET_PCIMAP_TYPE(%struct.atl1c_buffer* %73, i32 %74, i32 %75)
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %14, align 8
  %80 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %81 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @cpu_to_le64(i8* %82)
  %84 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %85 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %87 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @cpu_to_le16(i64 %88)
  %90 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %91 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %69, %4
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %12, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %162

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  store %struct.atl1c_tpd_desc* %100, %struct.atl1c_tpd_desc** %10, align 8
  br label %108

101:                                              ; preds = %96
  %102 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call %struct.atl1c_tpd_desc* @atl1c_get_tpd(%struct.atl1c_adapter* %102, i32 %103)
  store %struct.atl1c_tpd_desc* %104, %struct.atl1c_tpd_desc** %10, align 8
  %105 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %106 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %107 = call i32 @memcpy(%struct.atl1c_tpd_desc* %105, %struct.atl1c_tpd_desc* %106, i32 24)
  br label %108

108:                                              ; preds = %101, %99
  %109 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %110 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %111 = call %struct.atl1c_buffer* @atl1c_get_tx_buffer(%struct.atl1c_adapter* %109, %struct.atl1c_tpd_desc* %110)
  store %struct.atl1c_buffer* %111, %struct.atl1c_buffer** %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %14, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %116 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %118 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %14, align 8
  %124 = add nsw i64 %122, %123
  %125 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %126 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %129 = call i8* @pci_map_single(%struct.TYPE_5__* %119, i64 %124, i64 %127, i32 %128)
  %130 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %131 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %133 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %136 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @pci_dma_mapping_error(%struct.TYPE_5__* %134, i8* %137)
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %108
  br label %242

142:                                              ; preds = %108
  %143 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %144 = load i32, i32* @ATL1C_BUFFER_BUSY, align 4
  %145 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %143, i32 %144)
  %146 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %147 = load i32, i32* @ATL1C_PCIMAP_SINGLE, align 4
  %148 = load i32, i32* @ATL1C_PCIMAP_TODEVICE, align 4
  %149 = call i32 @ATL1C_SET_PCIMAP_TYPE(%struct.atl1c_buffer* %146, i32 %147, i32 %148)
  %150 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %151 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @cpu_to_le64(i8* %152)
  %154 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %155 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %157 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i8* @cpu_to_le16(i64 %158)
  %160 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %161 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %142, %92
  store i64 0, i64* %17, align 8
  br label %163

163:                                              ; preds = %229, %162
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* %16, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %232

167:                                              ; preds = %163
  %168 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %169 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %168)
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %17, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %19, align 8
  %174 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call %struct.atl1c_tpd_desc* @atl1c_get_tpd(%struct.atl1c_adapter* %174, i32 %175)
  store %struct.atl1c_tpd_desc* %176, %struct.atl1c_tpd_desc** %10, align 8
  %177 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %178 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %179 = call i32 @memcpy(%struct.atl1c_tpd_desc* %177, %struct.atl1c_tpd_desc* %178, i32 24)
  %180 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %181 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %182 = call %struct.atl1c_buffer* @atl1c_get_tx_buffer(%struct.atl1c_adapter* %180, %struct.atl1c_tpd_desc* %181)
  store %struct.atl1c_buffer* %182, %struct.atl1c_buffer** %11, align 8
  %183 = load i32*, i32** %19, align 8
  %184 = call i64 @skb_frag_size(i32* %183)
  %185 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %186 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %188 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %187, i32 0, i32 0
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32*, i32** %19, align 8
  %192 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %193 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @DMA_TO_DEVICE, align 4
  %196 = call i8* @skb_frag_dma_map(i32* %190, i32* %191, i32 0, i64 %194, i32 %195)
  %197 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %198 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %200 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %199, i32 0, i32 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %204 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @dma_mapping_error(i32* %202, i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %167
  br label %242

209:                                              ; preds = %167
  %210 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %211 = load i32, i32* @ATL1C_BUFFER_BUSY, align 4
  %212 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %210, i32 %211)
  %213 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %214 = load i32, i32* @ATL1C_PCIMAP_PAGE, align 4
  %215 = load i32, i32* @ATL1C_PCIMAP_TODEVICE, align 4
  %216 = call i32 @ATL1C_SET_PCIMAP_TYPE(%struct.atl1c_buffer* %213, i32 %214, i32 %215)
  %217 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %218 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* @cpu_to_le64(i8* %219)
  %221 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %222 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %224 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i8* @cpu_to_le16(i64 %225)
  %227 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %228 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %209
  %230 = load i64, i64* %17, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %17, align 8
  br label %163

232:                                              ; preds = %163
  %233 = load i32, i32* @TPD_EOP_SHIFT, align 4
  %234 = shl i32 1, %233
  %235 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %10, align 8
  %236 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %240 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %241 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %240, i32 0, i32 2
  store %struct.sk_buff* %239, %struct.sk_buff** %241, align 8
  store i32 0, i32* %5, align 4
  br label %247

242:                                              ; preds = %208, %141, %68
  %243 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %244 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %243, i32 0, i32 1
  store i8* null, i8** %244, align 8
  %245 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  %246 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  store i32 -1, i32* %5, align 4
  br label %247

247:                                              ; preds = %242, %232
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.atl1c_buffer* @atl1c_get_tx_buffer(%struct.atl1c_adapter*, %struct.atl1c_tpd_desc*) #1

declare dso_local i8* @pci_map_single(%struct.TYPE_5__*, i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer*, i32) #1

declare dso_local i32 @ATL1C_SET_PCIMAP_TYPE(%struct.atl1c_buffer*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local %struct.atl1c_tpd_desc* @atl1c_get_tpd(%struct.atl1c_adapter*, i32) #1

declare dso_local i32 @memcpy(%struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc*, i32) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i8* @skb_frag_dma_map(i32*, i32*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
