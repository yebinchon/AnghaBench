; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_map_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_map_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.vmxnet3_tx_ctx = type { i32, %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc* }
%union.Vmxnet3_GenericDesc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.vmxnet3_tx_queue = type { i32, %struct.TYPE_9__, %struct.vmxnet3_tx_buf_info*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, %union.Vmxnet3_GenericDesc* }
%struct.vmxnet3_tx_buf_info = type { i32, i32, %struct.sk_buff*, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }

@VMXNET3_TXD_GEN_SHIFT = common dso_local global i32 0, align 4
@VMXNET3_MAP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"txd[%u]: 0x%Lx 0x%x 0x%x\0A\00", align 1
@VMXNET3_MAX_TX_BUF_SIZE = common dso_local global i32 0, align 4
@VMXNET3_MAP_SINGLE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VMXNET3_MAP_PAGE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"txd[%u]: 0x%llx %u %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_queue*, %struct.pci_dev*, %struct.vmxnet3_adapter*)* @vmxnet3_map_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_map_pkt(%struct.sk_buff* %0, %struct.vmxnet3_tx_ctx* %1, %struct.vmxnet3_tx_queue* %2, %struct.pci_dev* %3, %struct.vmxnet3_adapter* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.vmxnet3_tx_ctx*, align 8
  %9 = alloca %struct.vmxnet3_tx_queue*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.vmxnet3_adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.Vmxnet3_GenericDesc*, align 8
  %17 = alloca %struct.vmxnet3_tx_buf_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.vmxnet3_tx_ctx* %1, %struct.vmxnet3_tx_ctx** %8, align 8
  store %struct.vmxnet3_tx_queue* %2, %struct.vmxnet3_tx_queue** %9, align 8
  store %struct.pci_dev* %3, %struct.pci_dev** %10, align 8
  store %struct.vmxnet3_adapter* %4, %struct.vmxnet3_adapter** %11, align 8
  store %struct.vmxnet3_tx_buf_info* null, %struct.vmxnet3_tx_buf_info** %17, align 8
  %21 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @skb_headlen(%struct.sk_buff* %24)
  %26 = icmp sgt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %32, 1
  %34 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %38, align 8
  %40 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %39, i64 %44
  %46 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %46, i32 0, i32 1
  store %union.Vmxnet3_GenericDesc* %45, %union.Vmxnet3_GenericDesc** %47, align 8
  %48 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %48, i32 0, i32 1
  %50 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %49, align 8
  store %union.Vmxnet3_GenericDesc* %50, %union.Vmxnet3_GenericDesc** %16, align 8
  %51 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %144

55:                                               ; preds = %5
  %56 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %57 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %61 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %59, %68
  %70 = call i8* @cpu_to_le64(i64 %69)
  %71 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %71, i32 0, i32 1
  %73 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %72, align 8
  %74 = bitcast %union.Vmxnet3_GenericDesc* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i8* %70, i8** %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %76, %79
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %82, i32 0, i32 1
  %84 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %83, align 8
  %85 = bitcast %union.Vmxnet3_GenericDesc* %84 to i8***
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  store i8* %81, i8** %87, align 8
  %88 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %88, i32 0, i32 1
  %90 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %89, align 8
  %91 = bitcast %union.Vmxnet3_GenericDesc* %90 to i8***
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 3
  store i8* null, i8** %93, align 8
  %94 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %94, i32 0, i32 2
  %96 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %95, align 8
  %97 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %96, i64 %101
  store %struct.vmxnet3_tx_buf_info* %102, %struct.vmxnet3_tx_buf_info** %17, align 8
  %103 = load i32, i32* @VMXNET3_MAP_NONE, align 4
  %104 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %105 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %11, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %110 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %114 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %113, i32 0, i32 1
  %115 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %114, align 8
  %116 = bitcast %union.Vmxnet3_GenericDesc* %115 to %struct.TYPE_8__*
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @le64_to_cpu(i8* %118)
  %120 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %121 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %120, i32 0, i32 1
  %122 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %121, align 8
  %123 = bitcast %union.Vmxnet3_GenericDesc* %122 to i8***
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %128 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %127, i32 0, i32 1
  %129 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %128, align 8
  %130 = bitcast %union.Vmxnet3_GenericDesc* %129 to i8***
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @netdev_dbg(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %119, i8* %126, i8* %133)
  %135 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %136 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %135, i32 0, i32 1
  %137 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_9__* %136)
  %138 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %139 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %143 = shl i32 %141, %142
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %55, %5
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = call i32 @skb_headlen(%struct.sk_buff* %145)
  %147 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %148 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %146, %149
  store i32 %150, i32* %13, align 4
  %151 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %152 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %14, align 8
  br label %155

155:                                              ; preds = %208, %144
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %290

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %12, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %12, align 4
  br label %169

167:                                              ; preds = %158
  %168 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  store i32 %168, i32* %18, align 4
  br label %169

169:                                              ; preds = %167, %162
  %170 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %171 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %170, i32 0, i32 2
  %172 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %171, align 8
  %173 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %174 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %172, i64 %177
  store %struct.vmxnet3_tx_buf_info* %178, %struct.vmxnet3_tx_buf_info** %17, align 8
  %179 = load i32, i32* @VMXNET3_MAP_SINGLE, align 4
  %180 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %181 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %11, align 8
  %183 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %182, i32 0, i32 1
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %14, align 8
  %190 = add i64 %188, %189
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %193 = call i64 @dma_map_single(i32* %185, i64 %190, i32 %191, i32 %192)
  %194 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %195 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %194, i32 0, i32 3
  store i64 %193, i64* %195, align 8
  %196 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %11, align 8
  %197 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %196, i32 0, i32 1
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %201 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @dma_mapping_error(i32* %199, i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %169
  %206 = load i32, i32* @EFAULT, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %6, align 4
  br label %465

208:                                              ; preds = %169
  %209 = load i32, i32* %18, align 4
  %210 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %211 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %213 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %214, align 8
  %216 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %217 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %215, i64 %220
  store %union.Vmxnet3_GenericDesc* %221, %union.Vmxnet3_GenericDesc** %16, align 8
  %222 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %223 = bitcast %union.Vmxnet3_GenericDesc* %222 to %struct.TYPE_8__*
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %227 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %225, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @BUG_ON(i32 %231)
  %233 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %234 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = call i8* @cpu_to_le64(i64 %235)
  %237 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %238 = bitcast %union.Vmxnet3_GenericDesc* %237 to %struct.TYPE_8__*
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store i8* %236, i8** %239, align 8
  %240 = load i32, i32* %12, align 4
  %241 = call i8* @cpu_to_le32(i32 %240)
  %242 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %243 = bitcast %union.Vmxnet3_GenericDesc* %242 to i8***
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 2
  store i8* %241, i8** %245, align 8
  %246 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %247 = bitcast %union.Vmxnet3_GenericDesc* %246 to i8***
  %248 = load i8**, i8*** %247, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 3
  store i8* null, i8** %249, align 8
  %250 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %11, align 8
  %251 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %254 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %258 = bitcast %union.Vmxnet3_GenericDesc* %257 to %struct.TYPE_8__*
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @le64_to_cpu(i8* %260)
  %262 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %263 = bitcast %union.Vmxnet3_GenericDesc* %262 to i8***
  %264 = load i8**, i8*** %263, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 2
  %266 = load i8*, i8** %265, align 8
  %267 = call i8* @le32_to_cpu(i8* %266)
  %268 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %269 = bitcast %union.Vmxnet3_GenericDesc* %268 to i8***
  %270 = load i8**, i8*** %269, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 3
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @netdev_dbg(i32 %252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %256, i32 %261, i8* %267, i8* %272)
  %274 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %275 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %274, i32 0, i32 1
  %276 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_9__* %275)
  %277 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %278 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %282 = shl i32 %280, %281
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* %13, align 4
  %285 = sub nsw i32 %284, %283
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* %14, align 8
  %289 = add i64 %288, %287
  store i64 %289, i64* %14, align 8
  br label %155

290:                                              ; preds = %155
  store i32 0, i32* %15, align 4
  br label %291

291:                                              ; preds = %441, %290
  %292 = load i32, i32* %15, align 4
  %293 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %294 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %293)
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp slt i32 %292, %296
  br i1 %297, label %298, label %444

298:                                              ; preds = %291
  %299 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %300 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %299)
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32* %305, i32** %19, align 8
  store i64 0, i64* %14, align 8
  %306 = load i32*, i32** %19, align 8
  %307 = call i32 @skb_frag_size(i32* %306)
  store i32 %307, i32* %13, align 4
  br label %308

308:                                              ; preds = %358, %298
  %309 = load i32, i32* %13, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %440

311:                                              ; preds = %308
  %312 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %313 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %312, i32 0, i32 2
  %314 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %313, align 8
  %315 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %316 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %314, i64 %319
  store %struct.vmxnet3_tx_buf_info* %320, %struct.vmxnet3_tx_buf_info** %17, align 8
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %311
  %325 = load i32, i32* %13, align 4
  store i32 %325, i32* %20, align 4
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %12, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %12, align 4
  br label %331

329:                                              ; preds = %311
  %330 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  store i32 %330, i32* %20, align 4
  br label %331

331:                                              ; preds = %329, %324
  %332 = load i32, i32* @VMXNET3_MAP_PAGE, align 4
  %333 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %334 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %333, i32 0, i32 4
  store i32 %332, i32* %334, align 8
  %335 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %11, align 8
  %336 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %335, i32 0, i32 1
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  %339 = load i32*, i32** %19, align 8
  %340 = load i64, i64* %14, align 8
  %341 = load i32, i32* %20, align 4
  %342 = load i32, i32* @DMA_TO_DEVICE, align 4
  %343 = call i64 @skb_frag_dma_map(i32* %338, i32* %339, i64 %340, i32 %341, i32 %342)
  %344 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %345 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %344, i32 0, i32 3
  store i64 %343, i64* %345, align 8
  %346 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %11, align 8
  %347 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %346, i32 0, i32 1
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %351 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = call i64 @dma_mapping_error(i32* %349, i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %331
  %356 = load i32, i32* @EFAULT, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %6, align 4
  br label %465

358:                                              ; preds = %331
  %359 = load i32, i32* %20, align 4
  %360 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %361 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 8
  %362 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %363 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 2
  %365 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %364, align 8
  %366 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %367 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %365, i64 %370
  store %union.Vmxnet3_GenericDesc* %371, %union.Vmxnet3_GenericDesc** %16, align 8
  %372 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %373 = bitcast %union.Vmxnet3_GenericDesc* %372 to %struct.TYPE_8__*
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %377 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp eq i32 %375, %379
  %381 = zext i1 %380 to i32
  %382 = call i32 @BUG_ON(i32 %381)
  %383 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %384 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = call i8* @cpu_to_le64(i64 %385)
  %387 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %388 = bitcast %union.Vmxnet3_GenericDesc* %387 to %struct.TYPE_8__*
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 1
  store i8* %386, i8** %389, align 8
  %390 = load i32, i32* %12, align 4
  %391 = call i8* @cpu_to_le32(i32 %390)
  %392 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %393 = bitcast %union.Vmxnet3_GenericDesc* %392 to i8***
  %394 = load i8**, i8*** %393, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 2
  store i8* %391, i8** %395, align 8
  %396 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %397 = bitcast %union.Vmxnet3_GenericDesc* %396 to i8***
  %398 = load i8**, i8*** %397, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 3
  store i8* null, i8** %399, align 8
  %400 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %11, align 8
  %401 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %404 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %408 = bitcast %union.Vmxnet3_GenericDesc* %407 to %struct.TYPE_8__*
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 1
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 @le64_to_cpu(i8* %410)
  %412 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %413 = bitcast %union.Vmxnet3_GenericDesc* %412 to i8***
  %414 = load i8**, i8*** %413, align 8
  %415 = getelementptr inbounds i8*, i8** %414, i64 2
  %416 = load i8*, i8** %415, align 8
  %417 = call i8* @le32_to_cpu(i8* %416)
  %418 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %419 = bitcast %union.Vmxnet3_GenericDesc* %418 to i8***
  %420 = load i8**, i8*** %419, align 8
  %421 = getelementptr inbounds i8*, i8** %420, i64 3
  %422 = load i8*, i8** %421, align 8
  %423 = call i32 @netdev_dbg(i32 %402, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %406, i32 %411, i8* %417, i8* %422)
  %424 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %425 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %424, i32 0, i32 1
  %426 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_9__* %425)
  %427 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %428 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %432 = shl i32 %430, %431
  store i32 %432, i32* %12, align 4
  %433 = load i32, i32* %20, align 4
  %434 = load i32, i32* %13, align 4
  %435 = sub nsw i32 %434, %433
  store i32 %435, i32* %13, align 4
  %436 = load i32, i32* %20, align 4
  %437 = sext i32 %436 to i64
  %438 = load i64, i64* %14, align 8
  %439 = add i64 %438, %437
  store i64 %439, i64* %14, align 8
  br label %308

440:                                              ; preds = %308
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %15, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %15, align 4
  br label %291

444:                                              ; preds = %291
  %445 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %446 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %447 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %446, i32 0, i32 2
  store %union.Vmxnet3_GenericDesc* %445, %union.Vmxnet3_GenericDesc** %447, align 8
  %448 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %449 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %450 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %449, i32 0, i32 2
  store %struct.sk_buff* %448, %struct.sk_buff** %450, align 8
  %451 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %452 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %451, i32 0, i32 1
  %453 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %452, align 8
  %454 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %9, align 8
  %455 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 2
  %457 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %456, align 8
  %458 = ptrtoint %union.Vmxnet3_GenericDesc* %453 to i64
  %459 = ptrtoint %union.Vmxnet3_GenericDesc* %457 to i64
  %460 = sub i64 %458, %459
  %461 = sdiv exact i64 %460, 16
  %462 = trunc i64 %461 to i32
  %463 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %17, align 8
  %464 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %463, i32 0, i32 1
  store i32 %462, i32* %464, align 4
  store i32 0, i32* %6, align 4
  br label %465

465:                                              ; preds = %444, %355, %205
  %466 = load i32, i32* %6, align 4
  ret i32 %466
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @le64_to_cpu(i8*) #1

declare dso_local i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_9__*) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
