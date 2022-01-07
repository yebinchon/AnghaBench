; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_alloc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_alloc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_7__, %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_rx_buf_info** }
%struct.TYPE_7__ = type { i32 }
%struct.vmxnet3_cmd_ring = type { i32, i32, i64, %union.Vmxnet3_GenericDesc* }
%union.Vmxnet3_GenericDesc = type { i32* }
%struct.vmxnet3_rx_buf_info = type { i64, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@VMXNET3_RX_BUF_SKB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@VMXNET3_RXD_BTYPE_HEAD = common dso_local global i64 0, align 8
@VMXNET3_RXD_BTYPE_SHIFT = common dso_local global i64 0, align 8
@VMXNET3_RX_BUF_PAGE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMXNET3_RXD_BTYPE_BODY = common dso_local global i64 0, align 8
@VMXNET3_RXD_GEN_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"alloc_rx_buf: %d allocated, next2fill %u, next2comp %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_rx_queue*, i64, i32, %struct.vmxnet3_adapter*)* @vmxnet3_rq_alloc_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rq_alloc_rx_buf(%struct.vmxnet3_rx_queue* %0, i64 %1, i32 %2, %struct.vmxnet3_adapter* %3) #0 {
  %5 = alloca %struct.vmxnet3_rx_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmxnet3_rx_buf_info*, align 8
  %11 = alloca %struct.vmxnet3_cmd_ring*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vmxnet3_rx_buf_info*, align 8
  %14 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vmxnet3_adapter* %3, %struct.vmxnet3_adapter** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %15, i32 0, i32 2
  %17 = load %struct.vmxnet3_rx_buf_info**, %struct.vmxnet3_rx_buf_info*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %17, i64 %18
  %20 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %19, align 8
  store %struct.vmxnet3_rx_buf_info* %20, %struct.vmxnet3_rx_buf_info** %10, align 8
  %21 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %21, i32 0, i32 1
  %23 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %23, i64 %24
  store %struct.vmxnet3_cmd_ring* %25, %struct.vmxnet3_cmd_ring** %11, align 8
  br label %26

26:                                               ; preds = %231, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %248

30:                                               ; preds = %26
  %31 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %10, align 8
  %32 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %31, i64 %35
  store %struct.vmxnet3_rx_buf_info* %36, %struct.vmxnet3_rx_buf_info** %13, align 8
  %37 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %37, i32 0, i32 3
  %39 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %38, align 8
  %40 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %39, i64 %43
  store %union.Vmxnet3_GenericDesc* %44, %union.Vmxnet3_GenericDesc** %14, align 8
  %45 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VMXNET3_RX_BUF_SKB, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %30
  %51 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %51, i32 0, i32 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = icmp eq %struct.TYPE_9__* %53, null
  br i1 %54, label %55, label %116

55:                                               ; preds = %50
  %56 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %57 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %60 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.TYPE_9__* @__netdev_alloc_skb_ip_align(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %64, i32 0, i32 4
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = icmp eq %struct.TYPE_9__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %248

79:                                               ; preds = %55
  %80 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %81 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %85 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %84, i32 0, i32 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %90 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %93 = call i32 @dma_map_single(i32* %83, i32 %88, i32 %91, i32 %92)
  %94 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %97 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %101 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @dma_mapping_error(i32* %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %79
  %106 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %106, i32 0, i32 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = call i32 @dev_kfree_skb_any(%struct.TYPE_9__* %108)
  %110 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %111 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %248

115:                                              ; preds = %79
  br label %117

116:                                              ; preds = %50
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i64, i64* @VMXNET3_RXD_BTYPE_HEAD, align 8
  %119 = load i64, i64* @VMXNET3_RXD_BTYPE_SHIFT, align 8
  %120 = shl i64 %118, %119
  store i64 %120, i64* %12, align 8
  br label %197

121:                                              ; preds = %30
  %122 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %123 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @VMXNET3_RX_BUF_PAGE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %129 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = icmp ne i32 %130, %131
  br label %133

133:                                              ; preds = %127, %121
  %134 = phi i1 [ true, %121 ], [ %132, %127 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @BUG_ON(i32 %135)
  %137 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %138 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %192

141:                                              ; preds = %133
  %142 = load i32, i32* @GFP_ATOMIC, align 4
  %143 = call i32* @alloc_page(i32 %142)
  %144 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %145 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %144, i32 0, i32 3
  store i32* %143, i32** %145, align 8
  %146 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %147 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %141
  %154 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %155 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  br label %248

159:                                              ; preds = %141
  %160 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %161 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %165 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @PAGE_SIZE, align 4
  %168 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %169 = call i32 @dma_map_page(i32* %163, i32* %166, i32 0, i32 %167, i32 %168)
  %170 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %171 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %173 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %177 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @dma_mapping_error(i32* %175, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %159
  %182 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %183 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @put_page(i32* %184)
  %186 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %187 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  br label %248

191:                                              ; preds = %159
  br label %193

192:                                              ; preds = %133
  br label %193

193:                                              ; preds = %192, %191
  %194 = load i64, i64* @VMXNET3_RXD_BTYPE_BODY, align 8
  %195 = load i64, i64* @VMXNET3_RXD_BTYPE_SHIFT, align 8
  %196 = shl i64 %194, %195
  store i64 %196, i64* %12, align 8
  br label %197

197:                                              ; preds = %193, %117
  %198 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %199 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @cpu_to_le64(i32 %200)
  %202 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %203 = bitcast %union.Vmxnet3_GenericDesc* %202 to %struct.TYPE_8__*
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %206 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = load i32, i32* @VMXNET3_RXD_GEN_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %12, align 8
  %215 = or i64 %213, %214
  %216 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %217 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = or i64 %215, %219
  %221 = trunc i64 %220 to i32
  %222 = call i32 @cpu_to_le32(i32 %221)
  %223 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %224 = bitcast %union.Vmxnet3_GenericDesc* %223 to i32**
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  store i32 %222, i32* %226, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %197
  br label %248

231:                                              ; preds = %197
  %232 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %233 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @VMXNET3_RXD_GEN_SHIFT, align 4
  %236 = shl i32 %234, %235
  %237 = call i32 @cpu_to_le32(i32 %236)
  %238 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %239 = bitcast %union.Vmxnet3_GenericDesc* %238 to i32**
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %237
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  %246 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %247 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.vmxnet3_cmd_ring* %246)
  br label %26

248:                                              ; preds = %230, %181, %153, %105, %73, %26
  %249 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %250 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %254 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %257 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @netdev_dbg(i32 %251, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %252, i32 %255, i64 %258)
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %248
  %263 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %264 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %268 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %266, %269
  br label %271

271:                                              ; preds = %262, %248
  %272 = phi i1 [ false, %248 ], [ %270, %262 ]
  %273 = zext i1 %272 to i32
  %274 = call i32 @BUG_ON(i32 %273)
  %275 = load i32, i32* %9, align 4
  ret i32 %275
}

declare dso_local %struct.TYPE_9__* @__netdev_alloc_skb_ip_align(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_9__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.vmxnet3_cmd_ring*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
