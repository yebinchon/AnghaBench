; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pmc.c_wil_pmc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pmc.c_wil_pmc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, %struct.pmc_ctx }
%struct.pmc_ctx = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.vring_tx_desc*, i32 }
%struct.TYPE_7__ = type { %struct.vring_tx_desc*, i32 }
%struct.vring_tx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.device = type { i32 }
%struct.wil6210_vif = type { i32 }
%struct.wmi_pmc_cmd = type { i32, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR pmc is already allocated\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Invalid params num_descriptors(%d), descriptor_size(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WIL_RING_SIZE_ORDER_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"num_descriptors(%d) exceeds max ring size %d\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Overflow in num_descriptors(%d)*descriptor_size(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"pmc_alloc: %d descriptors x %d bytes each\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"ERROR allocating pmc skb list\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"pmc_alloc: allocated descriptors info list %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"pmc_alloc: allocated pring %p => %pad. %zd x %d = total %zd bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ERROR allocating pmc pring\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"ERROR allocating pmc descriptor %d\00", align 1
@PCM_DATA_INVALID_DW_VAL = common dso_local global i32 0, align 4
@RX_DMA_D0_CMD_DMA_IT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"pmc_alloc: allocated successfully\0A\00", align 1
@WMI_PMC_ALLOCATE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"pmc_alloc: send WMI_PMC_CMD with ALLOCATE op\0A\00", align 1
@WMI_PMC_CMDID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"WMI_PMC_CMD with ALLOCATE op failed with status %d\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"exit on error: Releasing skbs...\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"exit on error: Releasing pring...\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"exit on error: Releasing descriptors info list...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_pmc_alloc(%struct.wil6210_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmc_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.wil6210_vif*, align 8
  %11 = alloca %struct.wmi_pmc_cmd, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vring_tx_desc*, align 8
  %14 = alloca %struct.vring_tx_desc, align 8
  %15 = alloca %struct.vring_tx_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 2
  store %struct.pmc_ctx* %19, %struct.pmc_ctx** %8, align 8
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %21 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %20)
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %23 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.wil6210_vif* @ndev_to_vif(i32 %24)
  store %struct.wil6210_vif* %25, %struct.wil6210_vif** %10, align 8
  %26 = bitcast %struct.wmi_pmc_cmd* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %29, i32 0, i32 3
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %33 = call i64 @wil_is_pmc_allocated(%struct.pmc_ctx* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %37 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %399

38:                                               ; preds = %3
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %38
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %399

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @WIL_RING_SIZE_ORDER_MAX, align 4
  %54 = shl i32 1, %53
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @WIL_RING_SIZE_ORDER_MAX, align 4
  %60 = shl i32 1, %59
  %61 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %399

64:                                               ; preds = %51
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @INT_MAX, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sdiv i32 %66, %67
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %399

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.TYPE_7__* @kcalloc(i32 %88, i32 4, i32 %89)
  %91 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %91, i32 0, i32 4
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  %93 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %94 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = icmp ne %struct.TYPE_7__* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %77
  %98 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %99 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %399

100:                                              ; preds = %77
  %101 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %102 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %102, i32 0, i32 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_7__* %104)
  %106 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %107 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 32
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load %struct.device*, %struct.device** %9, align 8
  %112 = call i32 @DMA_BIT_MASK(i32 32)
  %113 = call i32 @dma_set_mask_and_coherent(%struct.device* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %100
  %115 = load %struct.device*, %struct.device** %9, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 40, %117
  %119 = trunc i64 %118 to i32
  %120 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %121 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %120, i32 0, i32 6
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @dma_alloc_coherent(%struct.device* %115, i32 %119, i32* %121, i32 %122)
  %124 = bitcast i8* %123 to %struct.vring_tx_desc*
  %125 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %125, i32 0, i32 5
  store %struct.vring_tx_desc* %124, %struct.vring_tx_desc** %126, align 8
  %127 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %128 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 32
  br i1 %130, label %131, label %138

131:                                              ; preds = %114
  %132 = load %struct.device*, %struct.device** %9, align 8
  %133 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %134 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @DMA_BIT_MASK(i32 %135)
  %137 = call i32 @dma_set_mask_and_coherent(%struct.device* %132, i32 %136)
  br label %138

138:                                              ; preds = %131, %114
  %139 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %140 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %141 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %140, i32 0, i32 5
  %142 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %141, align 8
  %143 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %144 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %143, i32 0, i32 6
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 40, %147
  %149 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %139, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), %struct.vring_tx_desc* %142, i32* %144, i64 40, i32 %145, i64 %148)
  %150 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %151 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %150, i32 0, i32 5
  %152 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %151, align 8
  %153 = icmp ne %struct.vring_tx_desc* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %138
  %155 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %156 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %390

157:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %282, %157
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %285

162:                                              ; preds = %158
  %163 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %164 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %163, i32 0, i32 5
  %165 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %165, i64 %167
  store %struct.vring_tx_desc* %168, %struct.vring_tx_desc** %13, align 8
  %169 = bitcast %struct.vring_tx_desc* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %169, i8 0, i64 40, i1 false)
  store %struct.vring_tx_desc* %14, %struct.vring_tx_desc** %15, align 8
  store i32 0, i32* %16, align 4
  %170 = load %struct.device*, %struct.device** %9, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %173 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %172, i32 0, i32 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i32, i32* @GFP_KERNEL, align 4
  %180 = call i8* @dma_alloc_coherent(%struct.device* %170, i32 %171, i32* %178, i32 %179)
  %181 = bitcast i8* %180 to %struct.vring_tx_desc*
  %182 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %183 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %182, i32 0, i32 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  store %struct.vring_tx_desc* %181, %struct.vring_tx_desc** %188, align 8
  %189 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %190 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %189, i32 0, i32 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %195, align 8
  %197 = icmp ne %struct.vring_tx_desc* %196, null
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %162
  %203 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %204)
  br label %324

206:                                              ; preds = %162
  store i32 0, i32* %16, align 4
  br label %207

207:                                              ; preds = %231, %206
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = udiv i64 %211, 4
  %213 = icmp ult i64 %209, %212
  br i1 %213, label %214, label %234

214:                                              ; preds = %207
  %215 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %216 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %215, i32 0, i32 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %221, align 8
  %223 = bitcast %struct.vring_tx_desc* %222 to i32*
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32* %226, i32** %17, align 8
  %227 = load i32, i32* @PCM_DATA_INVALID_DW_VAL, align 4
  %228 = load i32, i32* %16, align 4
  %229 = or i32 %227, %228
  %230 = load i32*, i32** %17, align 8
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %214
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %16, align 4
  br label %207

234:                                              ; preds = %207
  %235 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %236 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %235, i32 0, i32 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @lower_32_bits(i32 %242)
  %244 = call i32 @cpu_to_le32(i32 %243)
  %245 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %15, align 8
  %246 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 1
  store i32 %244, i32* %248, align 8
  %249 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %250 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %249, i32 0, i32 4
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call i64 @upper_32_bits(i32 %256)
  %258 = trunc i64 %257 to i32
  %259 = call i8* @cpu_to_le16(i32 %258)
  %260 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %15, align 8
  %261 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  store i8* %259, i8** %263, align 8
  %264 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %15, align 8
  %265 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  store i64 0, i64* %266, align 8
  %267 = load i32, i32* %6, align 4
  %268 = call i8* @cpu_to_le16(i32 %267)
  %269 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %15, align 8
  %270 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  store i8* %268, i8** %271, align 8
  %272 = call i32 @BIT(i32 9)
  %273 = load i32, i32* @RX_DMA_D0_CMD_DMA_IT, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %15, align 8
  %276 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  %278 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %13, align 8
  %279 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %15, align 8
  %280 = bitcast %struct.vring_tx_desc* %278 to i8*
  %281 = bitcast %struct.vring_tx_desc* %279 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %280, i8* align 8 %281, i64 40, i1 false)
  br label %282

282:                                              ; preds = %234
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %7, align 4
  br label %158

285:                                              ; preds = %158
  %286 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %287 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %286, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %288 = load i32, i32* @WMI_PMC_ALLOCATE, align 4
  %289 = getelementptr inbounds %struct.wmi_pmc_cmd, %struct.wmi_pmc_cmd* %11, i32 0, i32 2
  store i32 %288, i32* %289, align 8
  %290 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %291 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i8* @cpu_to_le16(i32 %292)
  %294 = getelementptr inbounds %struct.wmi_pmc_cmd, %struct.wmi_pmc_cmd* %11, i32 0, i32 1
  store i8* %293, i8** %294, align 8
  %295 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %296 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @cpu_to_le64(i32 %297)
  %299 = getelementptr inbounds %struct.wmi_pmc_cmd, %struct.wmi_pmc_cmd* %11, i32 0, i32 0
  store i32 %298, i32* %299, align 8
  %300 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %301 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %300, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %302 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %303 = load i32, i32* @WMI_PMC_CMDID, align 4
  %304 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %305 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @wmi_send(%struct.wil6210_priv* %302, i32 %303, i32 %306, %struct.wmi_pmc_cmd* %11, i32 24)
  %308 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %309 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 8
  %310 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %311 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %285
  %315 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %316 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %317 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %315, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %318)
  br label %324

320:                                              ; preds = %285
  %321 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %322 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %321, i32 0, i32 3
  %323 = call i32 @mutex_unlock(i32* %322)
  br label %406

324:                                              ; preds = %314, %202
  %325 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %326 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %325, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %327

327:                                              ; preds = %370, %324
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* %5, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %327
  %332 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %333 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %332, i32 0, i32 4
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  %339 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %338, align 8
  %340 = icmp ne %struct.vring_tx_desc* %339, null
  br label %341

341:                                              ; preds = %331, %327
  %342 = phi i1 [ false, %327 ], [ %340, %331 ]
  br i1 %342, label %343, label %373

343:                                              ; preds = %341
  %344 = load %struct.device*, %struct.device** %9, align 8
  %345 = load i32, i32* %6, align 4
  %346 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %347 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %346, i32 0, i32 4
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = load i32, i32* %7, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %352, align 8
  %354 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %355 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %354, i32 0, i32 4
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = load i32, i32* %7, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @dma_free_coherent(%struct.device* %344, i32 %345, %struct.vring_tx_desc* %353, i32 %361)
  %363 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %364 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %363, i32 0, i32 4
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %364, align 8
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  store %struct.vring_tx_desc* null, %struct.vring_tx_desc** %369, align 8
  br label %370

370:                                              ; preds = %343
  %371 = load i32, i32* %7, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %7, align 4
  br label %327

373:                                              ; preds = %341
  %374 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %375 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %374, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %376 = load %struct.device*, %struct.device** %9, align 8
  %377 = load i32, i32* %5, align 4
  %378 = sext i32 %377 to i64
  %379 = mul i64 40, %378
  %380 = trunc i64 %379 to i32
  %381 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %382 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %381, i32 0, i32 5
  %383 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %382, align 8
  %384 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %385 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @dma_free_coherent(%struct.device* %376, i32 %380, %struct.vring_tx_desc* %383, i32 %386)
  %388 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %389 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %388, i32 0, i32 5
  store %struct.vring_tx_desc* null, %struct.vring_tx_desc** %389, align 8
  br label %390

390:                                              ; preds = %373, %154
  %391 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %392 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %391, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %393 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %394 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %393, i32 0, i32 4
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %394, align 8
  %396 = call i32 @kfree(%struct.TYPE_7__* %395)
  %397 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %398 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %397, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %398, align 8
  br label %399

399:                                              ; preds = %390, %97, %70, %56, %44, %35
  %400 = load i32, i32* %12, align 4
  %401 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %402 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %401, i32 0, i32 2
  store i32 %400, i32* %402, align 8
  %403 = load %struct.pmc_ctx*, %struct.pmc_ctx** %8, align 8
  %404 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %403, i32 0, i32 3
  %405 = call i32 @mutex_unlock(i32* %404)
  br label %406

406:                                              ; preds = %399, %320
  ret void
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @wil_is_pmc_allocated(%struct.pmc_ctx*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @BIT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_pmc_cmd*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.vring_tx_desc*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
