; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32 }
%struct.ibmveth_adapter = type { i32, i8*, i8*, %struct.TYPE_7__, i8*, i8*, %struct.TYPE_9__*, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.device, i32 }
%struct.device = type { i32 }
%union.ibmveth_buf_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"open starting\0A\00", align 1
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to allocate list pages\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to allocate filter pages\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to map buffer list pages\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to map filter list pages\0A\00", align 1
@IBMVETH_BUF_VALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"buffer list @ 0x%p\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"filter list @ 0x%p\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"receive q   @ 0x%p\0A\00", align 1
@VIO_IRQ_DISABLE = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"h_register_logical_lan failed with %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"buffer TCE:0x%llx filter TCE:0x%llx rxq desc:0x%llx MAC:0x%llx\0A\00", align 1
@ENONET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"unable to alloc pool\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"registering irq 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"unable to request irq 0x%x, rc %d\0A\00", align 1
@H_BUSY = common dso_local global i64 0, align 8
@IBMVETH_BUFF_OH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"unable to map bounce buffer\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"initial replenish cycle\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"open complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ibmveth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmveth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ibmveth_buf_desc, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ibmveth_adapter* %13, %struct.ibmveth_adapter** %4, align 8
  store i32 1, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %16, i32 0, i32 0
  %18 = call i32 @napi_enable(i32* %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %36, %1
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %24, i32 0, i32 6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i64 @get_zeroed_page(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %427

54:                                               ; preds = %39
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i64 @get_zeroed_page(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %421

67:                                               ; preds = %54
  %68 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %68, i32 0, i32 9
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store %struct.device* %71, %struct.device** %11, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.device*, %struct.device** %11, align 8
  %80 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i32 @dma_alloc_coherent(%struct.device* %79, i32 %83, i32* %86, i32 %87)
  %89 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 8
  %92 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %67
  br label %415

98:                                               ; preds = %67
  %99 = load %struct.device*, %struct.device** %11, align 8
  %100 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %104 = call i8* @dma_map_single(%struct.device* %99, i8* %102, i32 4096, i32 %103)
  %105 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load %struct.device*, %struct.device** %11, align 8
  %108 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @dma_mapping_error(%struct.device* %107, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %400

116:                                              ; preds = %98
  %117 = load %struct.device*, %struct.device** %11, align 8
  %118 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %122 = call i8* @dma_map_single(%struct.device* %117, i8* %120, i32 4096, i32 %121)
  %123 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  %125 = load %struct.device*, %struct.device** %11, align 8
  %126 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %127 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %126, i32 0, i32 5
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @dma_mapping_error(%struct.device* %125, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %393

134:                                              ; preds = %116
  %135 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %140 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %143 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ibmveth_encode_mac_addr(i32 %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* @IBMVETH_BUF_VALID, align 4
  %150 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %149, %153
  %155 = bitcast %union.ibmveth_buf_desc* %9 to %struct.TYPE_6__*
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %158 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = bitcast %union.ibmveth_buf_desc* %9 to %struct.TYPE_6__*
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %165 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %166)
  %168 = load %struct.net_device*, %struct.net_device** %3, align 8
  %169 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %170 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %171)
  %173 = load %struct.net_device*, %struct.net_device** %3, align 8
  %174 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %175 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  %179 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %180 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %179, i32 0, i32 9
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @VIO_IRQ_DISABLE, align 4
  %185 = call i32 @h_vio_signal(i32 %183, i32 %184)
  %186 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %9, i32 0, i32 0
  %189 = bitcast %struct.TYPE_6__* %188 to i64*
  %190 = load i64, i64* %189, align 4
  %191 = call i64 @ibmveth_register_logical_lan(%struct.ibmveth_adapter* %186, i64 %190, i32 %187)
  store i64 %191, i64* %7, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* @H_SUCCESS, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %212

195:                                              ; preds = %134
  %196 = load %struct.net_device*, %struct.net_device** %3, align 8
  %197 = load i64, i64* %7, align 8
  %198 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %196, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %197)
  %199 = load %struct.net_device*, %struct.net_device** %3, align 8
  %200 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %201 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %200, i32 0, i32 4
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %204 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %203, i32 0, i32 5
  %205 = load i8*, i8** %204, align 8
  %206 = bitcast %union.ibmveth_buf_desc* %9 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %199, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i8* %202, i8* %205, i32 %207, i32 %208)
  %210 = load i32, i32* @ENONET, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %8, align 4
  br label %386

212:                                              ; preds = %134
  store i32 0, i32* %10, align 4
  br label %213

213:                                              ; preds = %250, %212
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %253

217:                                              ; preds = %213
  %218 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %219 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %218, i32 0, i32 6
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %217
  br label %250

228:                                              ; preds = %217
  %229 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %230 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %229, i32 0, i32 6
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i64 %233
  %235 = call i64 @ibmveth_alloc_buffer_pool(%struct.TYPE_9__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %228
  %238 = load %struct.net_device*, %struct.net_device** %3, align 8
  %239 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %238, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %240 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %241 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %240, i32 0, i32 6
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %8, align 4
  br label %360

249:                                              ; preds = %228
  br label %250

250:                                              ; preds = %249, %227
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %213

253:                                              ; preds = %213
  %254 = load %struct.net_device*, %struct.net_device** %3, align 8
  %255 = load %struct.net_device*, %struct.net_device** %3, align 8
  %256 = getelementptr inbounds %struct.net_device, %struct.net_device* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %257)
  %259 = load %struct.net_device*, %struct.net_device** %3, align 8
  %260 = getelementptr inbounds %struct.net_device, %struct.net_device* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.net_device*, %struct.net_device** %3, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.net_device*, %struct.net_device** %3, align 8
  %266 = call i32 @request_irq(i32 %261, i32 (i32, %struct.net_device*)* @ibmveth_interrupt, i32 0, i32 %264, %struct.net_device* %265)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %253
  %270 = load %struct.net_device*, %struct.net_device** %3, align 8
  %271 = load %struct.net_device*, %struct.net_device** %3, align 8
  %272 = getelementptr inbounds %struct.net_device, %struct.net_device* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %8, align 4
  %275 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %270, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %291, %269
  %277 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %278 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %277, i32 0, i32 9
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @h_free_logical_lan(i32 %281)
  store i64 %282, i64* %7, align 8
  br label %283

283:                                              ; preds = %276
  %284 = load i64, i64* %7, align 8
  %285 = call i64 @H_IS_LONG_BUSY(i64 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = load i64, i64* %7, align 8
  %289 = load i64, i64* @H_BUSY, align 8
  %290 = icmp eq i64 %288, %289
  br label %291

291:                                              ; preds = %287, %283
  %292 = phi i1 [ true, %283 ], [ %290, %287 ]
  br i1 %292, label %276, label %293

293:                                              ; preds = %291
  br label %360

294:                                              ; preds = %253
  %295 = load i32, i32* @ENOMEM, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %8, align 4
  %297 = load %struct.net_device*, %struct.net_device** %3, align 8
  %298 = getelementptr inbounds %struct.net_device, %struct.net_device* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* @GFP_KERNEL, align 4
  %303 = call i8* @kmalloc(i32 %301, i32 %302)
  %304 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %305 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %304, i32 0, i32 7
  store i8* %303, i8** %305, align 8
  %306 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %307 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %306, i32 0, i32 7
  %308 = load i8*, i8** %307, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %294
  br label %354

311:                                              ; preds = %294
  %312 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %313 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %312, i32 0, i32 9
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %317 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %316, i32 0, i32 7
  %318 = load i8*, i8** %317, align 8
  %319 = load %struct.net_device*, %struct.net_device** %3, align 8
  %320 = getelementptr inbounds %struct.net_device, %struct.net_device* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %323 = add nsw i32 %321, %322
  %324 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %325 = call i8* @dma_map_single(%struct.device* %315, i8* %318, i32 %323, i32 %324)
  %326 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %327 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %326, i32 0, i32 8
  store i8* %325, i8** %327, align 8
  %328 = load %struct.device*, %struct.device** %11, align 8
  %329 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %330 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %329, i32 0, i32 8
  %331 = load i8*, i8** %330, align 8
  %332 = call i64 @dma_mapping_error(%struct.device* %328, i8* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %311
  %335 = load %struct.net_device*, %struct.net_device** %3, align 8
  %336 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %335, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %349

337:                                              ; preds = %311
  %338 = load %struct.net_device*, %struct.net_device** %3, align 8
  %339 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %338, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %340 = load %struct.net_device*, %struct.net_device** %3, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.net_device*, %struct.net_device** %3, align 8
  %344 = call i32 @ibmveth_interrupt(i32 %342, %struct.net_device* %343)
  %345 = load %struct.net_device*, %struct.net_device** %3, align 8
  %346 = call i32 @netif_start_queue(%struct.net_device* %345)
  %347 = load %struct.net_device*, %struct.net_device** %3, align 8
  %348 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %432

349:                                              ; preds = %334
  %350 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %351 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %350, i32 0, i32 7
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @kfree(i8* %352)
  br label %354

354:                                              ; preds = %349, %310
  %355 = load %struct.net_device*, %struct.net_device** %3, align 8
  %356 = getelementptr inbounds %struct.net_device, %struct.net_device* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.net_device*, %struct.net_device** %3, align 8
  %359 = call i32 @free_irq(i32 %357, %struct.net_device* %358)
  br label %360

360:                                              ; preds = %354, %293, %237
  br label %361

361:                                              ; preds = %384, %360
  %362 = load i32, i32* %10, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %10, align 4
  %364 = icmp sge i32 %363, 0
  br i1 %364, label %365, label %385

365:                                              ; preds = %361
  %366 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %367 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %366, i32 0, i32 6
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %367, align 8
  %369 = load i32, i32* %10, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %365
  %376 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %377 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %378 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %377, i32 0, i32 6
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** %378, align 8
  %380 = load i32, i32* %10, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i64 %381
  %383 = call i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter* %376, %struct.TYPE_9__* %382)
  br label %384

384:                                              ; preds = %375, %365
  br label %361

385:                                              ; preds = %361
  br label %386

386:                                              ; preds = %385, %195
  %387 = load %struct.device*, %struct.device** %11, align 8
  %388 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %389 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %388, i32 0, i32 5
  %390 = load i8*, i8** %389, align 8
  %391 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %392 = call i32 @dma_unmap_single(%struct.device* %387, i8* %390, i32 4096, i32 %391)
  br label %393

393:                                              ; preds = %386, %131
  %394 = load %struct.device*, %struct.device** %11, align 8
  %395 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %396 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %395, i32 0, i32 4
  %397 = load i8*, i8** %396, align 8
  %398 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %399 = call i32 @dma_unmap_single(%struct.device* %394, i8* %397, i32 4096, i32 %398)
  br label %400

400:                                              ; preds = %393, %113
  %401 = load %struct.device*, %struct.device** %11, align 8
  %402 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %403 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %407 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %411 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @dma_free_coherent(%struct.device* %401, i32 %405, i32 %409, i32 %413)
  br label %415

415:                                              ; preds = %400, %97
  %416 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %417 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %416, i32 0, i32 2
  %418 = load i8*, i8** %417, align 8
  %419 = ptrtoint i8* %418 to i64
  %420 = call i32 @free_page(i64 %419)
  br label %421

421:                                              ; preds = %415, %64
  %422 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %423 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %422, i32 0, i32 1
  %424 = load i8*, i8** %423, align 8
  %425 = ptrtoint i8* %424 to i64
  %426 = call i32 @free_page(i64 %425)
  br label %427

427:                                              ; preds = %421, %51
  %428 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %429 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %428, i32 0, i32 0
  %430 = call i32 @napi_disable(i32* %429)
  %431 = load i32, i32* %8, align 4
  store i32 %431, i32* %2, align 4
  br label %432

432:                                              ; preds = %427, %337
  %433 = load i32, i32* %2, align 4
  ret i32 %433
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @ibmveth_encode_mac_addr(i32) #1

declare dso_local i32 @h_vio_signal(i32, i32) #1

declare dso_local i64 @ibmveth_register_logical_lan(%struct.ibmveth_adapter*, i64, i32) #1

declare dso_local i64 @ibmveth_alloc_buffer_pool(%struct.TYPE_9__*) #1

declare dso_local i32 @request_irq(i32, i32 (i32, %struct.net_device*)*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ibmveth_interrupt(i32, %struct.net_device*) #1

declare dso_local i64 @h_free_logical_lan(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter*, %struct.TYPE_9__*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
