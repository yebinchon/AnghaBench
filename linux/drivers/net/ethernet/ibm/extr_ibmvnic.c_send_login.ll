; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i64, i64, i64, i64, %struct.ibmvnic_login_rsp_buffer*, i32, %struct.TYPE_7__**, %struct.TYPE_6__**, %struct.ibmvnic_login_rsp_buffer*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvnic_login_rsp_buffer = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_login_buffer = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%union.ibmvnic_crq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32 }
%struct.vnic_login_client_data = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"RX or TX queues are not allocated, device login failed\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't map login buffer\0A\00", align 1
@IBMVNIC_TX_DESC_VERSIONS = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't map login rsp buffer\0A\00", align 1
@INITIAL_VERSION_LB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Login Buffer:\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%016lx\0A\00", align 1
@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@LOGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @send_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_login(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_login_rsp_buffer*, align 8
  %5 = alloca %struct.ibmvnic_login_buffer*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.ibmvnic_crq, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vnic_login_client_data*, align 8
  %16 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %17, i32 0, i32 11
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %21, i32 0, i32 9
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %24 = icmp ne %struct.TYPE_6__** %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 8
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %27, align 8
  %29 = icmp ne %struct.TYPE_7__** %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %351

35:                                               ; preds = %25
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %37 = call i32 @release_login_rsp_buffer(%struct.ibmvnic_adapter* %36)
  %38 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %39 = call i32 @vnic_client_data_len(%struct.ibmvnic_adapter* %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = add i64 80, %48
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.ibmvnic_login_rsp_buffer* @kzalloc(i64 %53, i32 %54)
  %56 = bitcast %struct.ibmvnic_login_rsp_buffer* %55 to %struct.ibmvnic_login_buffer*
  store %struct.ibmvnic_login_buffer* %56, %struct.ibmvnic_login_buffer** %5, align 8
  %57 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %58 = icmp ne %struct.ibmvnic_login_buffer* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %35
  br label %350

60:                                               ; preds = %35
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %63 = bitcast %struct.ibmvnic_login_buffer* %62 to %struct.ibmvnic_login_rsp_buffer*
  %64 = load i64, i64* %11, align 8
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i64 @dma_map_single(%struct.device* %61, %struct.ibmvnic_login_rsp_buffer* %63, i64 %64, i32 %65)
  store i64 %66, i64* %8, align 8
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @dma_mapping_error(%struct.device* %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %346

74:                                               ; preds = %60
  %75 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = add i64 80, %79
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = add i64 %80, %85
  %87 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = add i64 %86, %91
  %93 = load i32, i32* @IBMVNIC_TX_DESC_VERSIONS, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = add i64 %92, %95
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call %struct.ibmvnic_login_rsp_buffer* @kmalloc(i64 %97, i32 %98)
  store %struct.ibmvnic_login_rsp_buffer* %99, %struct.ibmvnic_login_rsp_buffer** %4, align 8
  %100 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %4, align 8
  %101 = icmp ne %struct.ibmvnic_login_rsp_buffer* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %74
  br label %340

103:                                              ; preds = %74
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %4, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %108 = call i64 @dma_map_single(%struct.device* %104, %struct.ibmvnic_login_rsp_buffer* %105, i64 %106, i32 %107)
  store i64 %108, i64* %7, align 8
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @dma_mapping_error(%struct.device* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %337

116:                                              ; preds = %103
  %117 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %118 = bitcast %struct.ibmvnic_login_buffer* %117 to %struct.ibmvnic_login_rsp_buffer*
  %119 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %119, i32 0, i32 6
  store %struct.ibmvnic_login_rsp_buffer* %118, %struct.ibmvnic_login_rsp_buffer** %120, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  %127 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %4, align 8
  %128 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %128, i32 0, i32 10
  store %struct.ibmvnic_login_rsp_buffer* %127, %struct.ibmvnic_login_rsp_buffer** %129, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %134, i32 0, i32 5
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i8* @cpu_to_be32(i64 %136)
  %138 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %139 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %138, i32 0, i32 9
  store i8* %137, i8** %139, align 8
  %140 = load i64, i64* @INITIAL_VERSION_LB, align 8
  %141 = call i8* @cpu_to_be32(i64 %140)
  %142 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %143 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %142, i32 0, i32 8
  store i8* %141, i8** %143, align 8
  %144 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i8* @cpu_to_be32(i64 %147)
  %149 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %150 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %149, i32 0, i32 7
  store i8* %148, i8** %150, align 8
  %151 = call i8* @cpu_to_be32(i64 80)
  %152 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %153 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %152, i32 0, i32 6
  store i8* %151, i8** %153, align 8
  %154 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %155 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = call i8* @cpu_to_be32(i64 %157)
  %159 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %160 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  %161 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = mul i64 4, %164
  %166 = add i64 80, %165
  %167 = call i8* @cpu_to_be32(i64 %166)
  %168 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %169 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load i64, i64* %7, align 8
  %171 = call i8* @cpu_to_be32(i64 %170)
  %172 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %173 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load i64, i64* %9, align 8
  %175 = call i8* @cpu_to_be32(i64 %174)
  %176 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %177 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  %178 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %179 = bitcast %struct.ibmvnic_login_buffer* %178 to i8*
  %180 = getelementptr inbounds i8, i8* %179, i64 80
  %181 = bitcast i8* %180 to i32*
  store i32* %181, i32** %12, align 8
  %182 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %183 = bitcast %struct.ibmvnic_login_buffer* %182 to i8*
  %184 = getelementptr inbounds i8, i8* %183, i64 80
  %185 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %186 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = mul i64 4, %188
  %190 = getelementptr inbounds i8, i8* %184, i64 %189
  %191 = bitcast i8* %190 to i32*
  store i32* %191, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %192

192:                                              ; preds = %223, %116
  %193 = load i32, i32* %16, align 4
  %194 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %195 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %226

198:                                              ; preds = %192
  %199 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %199, i32 0, i32 9
  %201 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %201, i64 %203
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = icmp ne %struct.TYPE_6__* %205, null
  br i1 %206, label %207, label %222

207:                                              ; preds = %198
  %208 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %209 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %208, i32 0, i32 9
  %210 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %210, i64 %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @cpu_to_be64(i32 %216)
  %218 = load i32*, i32** %12, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %217, i32* %221, align 4
  br label %222

222:                                              ; preds = %207, %198
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  br label %192

226:                                              ; preds = %192
  store i32 0, i32* %16, align 4
  br label %227

227:                                              ; preds = %258, %226
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %230 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %261

233:                                              ; preds = %227
  %234 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %235 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %234, i32 0, i32 8
  %236 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %235, align 8
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %236, i64 %238
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = icmp ne %struct.TYPE_7__* %240, null
  br i1 %241, label %242, label %257

242:                                              ; preds = %233
  %243 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %244 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %243, i32 0, i32 8
  %245 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %245, i64 %247
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @cpu_to_be64(i32 %251)
  %253 = load i32*, i32** %13, align 8
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %252, i32* %256, align 4
  br label %257

257:                                              ; preds = %242, %233
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %16, align 4
  br label %227

261:                                              ; preds = %227
  %262 = load i32*, i32** %13, align 8
  %263 = bitcast i32* %262 to i8*
  %264 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %265 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = mul i64 4, %267
  %269 = getelementptr inbounds i8, i8* %263, i64 %268
  %270 = bitcast i8* %269 to %struct.vnic_login_client_data*
  store %struct.vnic_login_client_data* %270, %struct.vnic_login_client_data** %15, align 8
  %271 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %15, align 8
  %272 = bitcast %struct.vnic_login_client_data* %271 to i8*
  %273 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %274 = bitcast %struct.ibmvnic_login_buffer* %273 to i8*
  %275 = ptrtoint i8* %272 to i64
  %276 = ptrtoint i8* %274 to i64
  %277 = sub i64 %275, %276
  %278 = call i8* @cpu_to_be32(i64 %277)
  %279 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %280 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %279, i32 0, i32 1
  store i8* %278, i8** %280, align 8
  %281 = load i32, i32* %14, align 4
  %282 = sext i32 %281 to i64
  %283 = call i8* @cpu_to_be32(i64 %282)
  %284 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %285 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  %286 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %287 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %15, align 8
  %288 = call i32 @vnic_add_client_data(%struct.ibmvnic_adapter* %286, %struct.vnic_login_client_data* %287)
  %289 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %290 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 8
  %292 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %291, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %293

293:                                              ; preds = %316, %261
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %297 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = sub i64 %298, 1
  %300 = udiv i64 %299, 8
  %301 = add i64 %300, 1
  %302 = icmp ult i64 %295, %301
  br i1 %302, label %303, label %319

303:                                              ; preds = %293
  %304 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %305 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %308 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %307, i32 0, i32 6
  %309 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %308, align 8
  %310 = bitcast %struct.ibmvnic_login_rsp_buffer* %309 to i64*
  %311 = load i32, i32* %16, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %306, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %314)
  br label %316

316:                                              ; preds = %303
  %317 = load i32, i32* %16, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %16, align 4
  br label %293

319:                                              ; preds = %293
  %320 = call i32 @memset(%union.ibmvnic_crq* %10, i32 0, i32 24)
  %321 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %322 = bitcast %union.ibmvnic_crq* %10 to %struct.TYPE_8__*
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* @LOGIN, align 4
  %325 = bitcast %union.ibmvnic_crq* %10 to %struct.TYPE_8__*
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 8
  %327 = load i64, i64* %8, align 8
  %328 = call i8* @cpu_to_be32(i64 %327)
  %329 = bitcast %union.ibmvnic_crq* %10 to %struct.TYPE_8__*
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 1
  store i8* %328, i8** %330, align 8
  %331 = load i64, i64* %11, align 8
  %332 = call i8* @cpu_to_be32(i64 %331)
  %333 = bitcast %union.ibmvnic_crq* %10 to %struct.TYPE_8__*
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  store i8* %332, i8** %334, align 8
  %335 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %336 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %335, %union.ibmvnic_crq* %10)
  store i32 0, i32* %2, align 4
  br label %351

337:                                              ; preds = %113
  %338 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %4, align 8
  %339 = call i32 @kfree(%struct.ibmvnic_login_rsp_buffer* %338)
  br label %340

340:                                              ; preds = %337, %102
  %341 = load %struct.device*, %struct.device** %6, align 8
  %342 = load i64, i64* %8, align 8
  %343 = load i64, i64* %11, align 8
  %344 = load i32, i32* @DMA_TO_DEVICE, align 4
  %345 = call i32 @dma_unmap_single(%struct.device* %341, i64 %342, i64 %343, i32 %344)
  br label %346

346:                                              ; preds = %340, %71
  %347 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %5, align 8
  %348 = bitcast %struct.ibmvnic_login_buffer* %347 to %struct.ibmvnic_login_rsp_buffer*
  %349 = call i32 @kfree(%struct.ibmvnic_login_rsp_buffer* %348)
  br label %350

350:                                              ; preds = %346, %59
  store i32 -1, i32* %2, align 4
  br label %351

351:                                              ; preds = %350, %319, %30
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @release_login_rsp_buffer(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @vnic_client_data_len(%struct.ibmvnic_adapter*) #1

declare dso_local %struct.ibmvnic_login_rsp_buffer* @kzalloc(i64, i32) #1

declare dso_local i64 @dma_map_single(%struct.device*, %struct.ibmvnic_login_rsp_buffer*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.ibmvnic_login_rsp_buffer* @kmalloc(i64, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @vnic_add_client_data(%struct.ibmvnic_adapter*, %struct.vnic_login_client_data*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

declare dso_local i32 @kfree(%struct.ibmvnic_login_rsp_buffer*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
