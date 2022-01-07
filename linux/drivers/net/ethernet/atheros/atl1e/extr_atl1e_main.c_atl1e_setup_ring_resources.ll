; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_setup_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_setup_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, i32*, i32, %struct.atl1e_rx_ring, %struct.atl1e_tx_ring, %struct.pci_dev* }
%struct.atl1e_rx_ring = type { i64, %struct.atl1e_rx_page_desc* }
%struct.atl1e_rx_page_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.atl1e_tx_ring = type { i32, i32, i32, i32, i32*, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"pci_alloc_consistent failed, size = D%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AT_PAGE_NUM_PER_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"offset(%d) > ring size(%d) !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1e_adapter*)* @atl1e_setup_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_setup_ring_resources(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.atl1e_tx_ring*, align 8
  %6 = alloca %struct.atl1e_rx_ring*, align 8
  %7 = alloca %struct.atl1e_rx_page_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %13, i32 0, i32 7
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %282

21:                                               ; preds = %1
  %22 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %22, i32 0, i32 6
  store %struct.atl1e_tx_ring* %23, %struct.atl1e_tx_ring** %5, align 8
  %24 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %24, i32 0, i32 5
  store %struct.atl1e_rx_ring* %25, %struct.atl1e_rx_ring** %6, align 8
  %26 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %33, i32 0, i32 1
  %35 = call i32* @pci_zalloc_consistent(%struct.pci_dev* %29, i32 %32, i32* %34)
  %36 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %21
  %43 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %282

50:                                               ; preds = %21
  %51 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %6, align 8
  %52 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %51, i32 0, i32 1
  %53 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %52, align 8
  store %struct.atl1e_rx_page_desc* %53, %struct.atl1e_rx_page_desc** %7, align 8
  %54 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @roundup(i32 %56, i32 8)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %60 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %62 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = ptrtoint i32* %73 to i32
  %75 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %78 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32* @kzalloc(i32 %83, i32 %84)
  %86 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %87 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %86, i32 0, i32 4
  store i32* %85, i32** %87, align 8
  %88 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %89 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %50
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %12, align 4
  br label %261

95:                                               ; preds = %50
  %96 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %97 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i8* @roundup(i32 %105, i32 32)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %163, %95
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %166

114:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %159, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @AT_PAGE_NUM_PER_QUEUE, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %162

119:                                              ; preds = %115
  %120 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %122, %123
  %125 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %125, i64 %127
  %129 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %124, i32* %134, align 4
  %135 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = ptrtoint i32* %140 to i32
  %142 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %142, i64 %144
  %146 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  store i32 %141, i32* %151, align 4
  %152 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %6, align 8
  %153 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %119
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %115

162:                                              ; preds = %115
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %108

166:                                              ; preds = %108
  %167 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %168 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %169, %170
  %172 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %173 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = ptrtoint i32* %179 to i32
  %181 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %182 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 %184, 4
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %239, %166
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %242

193:                                              ; preds = %187
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %235, %193
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @AT_PAGE_NUM_PER_QUEUE, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %238

198:                                              ; preds = %194
  %199 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %7, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %204, i64 %206
  %208 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %207, i32 0, i32 0
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  store i32 %203, i32* %213, align 4
  %214 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %215 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = ptrtoint i32* %219 to i32
  %221 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %7, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %221, i64 %223
  %225 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %224, i32 0, i32 0
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  store i32 %220, i32* %230, align 4
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = add i64 %232, 4
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %11, align 4
  br label %235

235:                                              ; preds = %198
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %194

238:                                              ; preds = %194
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %187

242:                                              ; preds = %187
  %243 = load i32, i32* %11, align 4
  %244 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %245 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp sgt i32 %243, %246
  %248 = zext i1 %247 to i32
  %249 = call i64 @unlikely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %242
  %252 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %253 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %257 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %254, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %255, i32 %258)
  store i32 -1, i32* %12, align 4
  br label %261

260:                                              ; preds = %242
  store i32 0, i32* %2, align 4
  br label %282

261:                                              ; preds = %251, %92
  %262 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %263 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %262, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %280

266:                                              ; preds = %261
  %267 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %268 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %269 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %272 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %275 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @pci_free_consistent(%struct.pci_dev* %267, i32 %270, i32* %273, i32 %276)
  %278 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %279 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %278, i32 0, i32 3
  store i32* null, i32** %279, align 8
  br label %280

280:                                              ; preds = %266, %261
  %281 = load i32, i32* %12, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %280, %260, %42, %20
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32* @pci_zalloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, ...) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
