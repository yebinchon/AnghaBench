; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_allocate_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_allocate_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_slice_state = type { %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_7__, %struct.myri10ge_priv* }
%struct.TYPE_5__ = type { i32, %struct.mcp_kreq_ether_send*, %struct.TYPE_6__*, %struct.TYPE_6__*, i64 }
%struct.mcp_kreq_ether_send = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i8* }
%struct.myri10ge_priv = type { i64, i64, i32, %struct.myri10ge_slice_state*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.myri10ge_cmd = type { i32 }

@MXGEFW_CMD_GET_SEND_RING_SIZE = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_RX_RING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MYRI10GE_MAX_SEND_DESC_TSO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MYRI10GE_ALLOC_SIZE = common dso_local global i8* null, align 8
@MXGEFW_PAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"slice-%d: alloced only %d small bufs\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"slice-%d: alloced only %d big bufs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_slice_state*)* @myri10ge_allocate_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_allocate_rings(%struct.myri10ge_slice_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_slice_state*, align 8
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca %struct.myri10ge_cmd, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.myri10ge_slice_state* %0, %struct.myri10ge_slice_state** %3, align 8
  %17 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %18 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %17, i32 0, i32 3
  %19 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %18, align 8
  store %struct.myri10ge_priv* %19, %struct.myri10ge_priv** %4, align 8
  %20 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %21 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %20, i32 0, i32 4
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %6, align 8
  %23 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %24 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %25 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %24, i32 0, i32 3
  %26 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %25, align 8
  %27 = ptrtoint %struct.myri10ge_slice_state* %23 to i64
  %28 = ptrtoint %struct.myri10ge_slice_state* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 144
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %35 = load i32, i32* @MXGEFW_CMD_GET_SEND_RING_SIZE, align 4
  %36 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %34, i32 %35, %struct.myri10ge_cmd* %5, i32 0)
  store i32 %36, i32* %13, align 4
  %37 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %5, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %42 = load i32, i32* @MXGEFW_CMD_GET_RX_RING_SIZE, align 4
  %43 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %41, i32 %42, %struct.myri10ge_cmd* %5, i32 0)
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %2, align 4
  br label %440

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %64 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %69 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %72 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %67, i32* %73, align 8
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* @MYRI10GE_MAX_SEND_DESC_TSO, align 4
  %77 = add nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 8, %79
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kzalloc(i64 %81, i32 %82)
  %84 = bitcast i8* %83 to %struct.TYPE_6__*
  %85 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %86 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %87, align 8
  %88 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %89 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = icmp eq %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %50
  br label %438

94:                                               ; preds = %50
  %95 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %96 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = ptrtoint %struct.TYPE_6__* %98 to i64
  %100 = call i64 @ALIGN(i64 %99, i32 8)
  %101 = inttoptr i64 %100 to %struct.mcp_kreq_ether_send*
  %102 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %103 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store %struct.mcp_kreq_ether_send* %101, %struct.mcp_kreq_ether_send** %104, align 8
  %105 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %106 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @kzalloc(i64 %111, i32 %112)
  %114 = bitcast i8* %113 to %struct.TYPE_6__*
  %115 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %116 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %117, align 8
  %118 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %119 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = icmp eq %struct.TYPE_6__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %94
  br label %426

124:                                              ; preds = %94
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @kzalloc(i64 %128, i32 %129)
  %131 = bitcast i8* %130 to %struct.TYPE_6__*
  %132 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %133 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %134, align 8
  %135 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %136 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = icmp eq %struct.TYPE_6__* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %420

141:                                              ; preds = %124
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  store i64 %144, i64* %14, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i8* @kzalloc(i64 %145, i32 %146)
  %148 = bitcast i8* %147 to %struct.TYPE_6__*
  %149 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %150 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  store %struct.TYPE_6__* %148, %struct.TYPE_6__** %151, align 8
  %152 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %153 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = icmp eq %struct.TYPE_6__* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %141
  br label %414

158:                                              ; preds = %141
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  store i64 %161, i64* %14, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call i8* @kzalloc(i64 %162, i32 %163)
  %165 = bitcast i8* %164 to %struct.TYPE_6__*
  %166 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %167 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  store %struct.TYPE_6__* %165, %struct.TYPE_6__** %168, align 8
  %169 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %170 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = icmp eq %struct.TYPE_6__* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %158
  br label %408

175:                                              ; preds = %158
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 4
  store i64 %178, i64* %14, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i32, i32* @GFP_KERNEL, align 4
  %181 = call i8* @kzalloc(i64 %179, i32 %180)
  %182 = bitcast i8* %181 to %struct.TYPE_6__*
  %183 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %184 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  store %struct.TYPE_6__* %182, %struct.TYPE_6__** %185, align 8
  %186 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %187 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = icmp eq %struct.TYPE_6__* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %175
  br label %402

192:                                              ; preds = %175
  %193 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %194 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  store i32 0, i32* %195, align 4
  %196 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %197 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store i32 0, i32* %198, align 4
  %199 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %200 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  store i32 0, i32* %201, align 8
  %202 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %203 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  store i32 0, i32* %204, align 8
  %205 = load i8*, i8** @MYRI10GE_ALLOC_SIZE, align 8
  %206 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %207 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 6
  store i8* %205, i8** %208, align 8
  %209 = load i8*, i8** @MYRI10GE_ALLOC_SIZE, align 8
  %210 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %211 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 6
  store i8* %209, i8** %212, align 8
  %213 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %214 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 5
  store i64 0, i64* %215, align 8
  %216 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %217 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 5
  store i64 0, i64* %218, align 8
  %219 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %220 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %192
  %224 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %225 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  %229 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %230 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 2
  store i32 %228, i32* %231, align 8
  br label %242

232:                                              ; preds = %192
  %233 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %234 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %235 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %234, i32 0, i32 1
  %236 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %237 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @MXGEFW_PAD, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %233, %struct.TYPE_7__* %235, i64 %240, i32 0)
  br label %242

242:                                              ; preds = %232, %223
  %243 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %244 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %248 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  %252 = icmp slt i32 %246, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %242
  %254 = load %struct.net_device*, %struct.net_device** %6, align 8
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %257 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @netdev_err(%struct.net_device* %254, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %255, i32 %259)
  br label %335

261:                                              ; preds = %242
  %262 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %263 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %264 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %263, i32 0, i32 2
  %265 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %266 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %262, %struct.TYPE_7__* %264, i64 %267, i32 0)
  %269 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %270 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %274 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, 1
  %278 = icmp slt i32 %272, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %261
  %280 = load %struct.net_device*, %struct.net_device** %6, align 8
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %283 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @netdev_err(%struct.net_device* %280, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %281, i32 %285)
  br label %288

287:                                              ; preds = %261
  store i32 0, i32* %2, align 4
  br label %440

288:                                              ; preds = %279
  %289 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %290 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %11, align 4
  br label %293

293:                                              ; preds = %331, %288
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %296 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = icmp slt i32 %294, %298
  br i1 %299, label %300, label %334

300:                                              ; preds = %293
  %301 = load i32, i32* %11, align 4
  %302 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %303 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %301, %305
  store i32 %306, i32* %15, align 4
  %307 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %308 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %311 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = load i32, i32* %15, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %315
  %317 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %318 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @myri10ge_unmap_rx_page(i32 %309, %struct.TYPE_6__* %316, i64 %319)
  %321 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %322 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 4
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = load i32, i32* %15, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @put_page(i32 %329)
  br label %331

331:                                              ; preds = %300
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %11, align 4
  br label %293

334:                                              ; preds = %293
  br label %335

335:                                              ; preds = %334, %253
  %336 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %337 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %335
  %341 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %342 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %346 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 2
  store i32 %344, i32* %347, align 8
  br label %348

348:                                              ; preds = %340, %335
  %349 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %350 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  store i32 %352, i32* %11, align 4
  br label %353

353:                                              ; preds = %393, %348
  %354 = load i32, i32* %11, align 4
  %355 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %356 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = icmp slt i32 %354, %358
  br i1 %359, label %360, label %396

360:                                              ; preds = %353
  %361 = load i32, i32* %11, align 4
  %362 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %363 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = and i32 %361, %365
  store i32 %366, i32* %16, align 4
  %367 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %368 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %371 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 4
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %372, align 8
  %374 = load i32, i32* %16, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i64 %375
  %377 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %378 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @MXGEFW_PAD, align 8
  %381 = add nsw i64 %379, %380
  %382 = call i32 @myri10ge_unmap_rx_page(i32 %369, %struct.TYPE_6__* %376, i64 %381)
  %383 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %384 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %385, align 8
  %387 = load i32, i32* %16, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @put_page(i32 %391)
  br label %393

393:                                              ; preds = %360
  %394 = load i32, i32* %11, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %11, align 4
  br label %353

396:                                              ; preds = %353
  %397 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %398 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 4
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %399, align 8
  %401 = call i32 @kfree(%struct.TYPE_6__* %400)
  br label %402

402:                                              ; preds = %396, %191
  %403 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %404 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 4
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %405, align 8
  %407 = call i32 @kfree(%struct.TYPE_6__* %406)
  br label %408

408:                                              ; preds = %402, %174
  %409 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %410 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 3
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %411, align 8
  %413 = call i32 @kfree(%struct.TYPE_6__* %412)
  br label %414

414:                                              ; preds = %408, %157
  %415 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %416 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 3
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** %417, align 8
  %419 = call i32 @kfree(%struct.TYPE_6__* %418)
  br label %420

420:                                              ; preds = %414, %140
  %421 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %422 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 3
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %423, align 8
  %425 = call i32 @kfree(%struct.TYPE_6__* %424)
  br label %426

426:                                              ; preds = %420, %123
  %427 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %428 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 2
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %429, align 8
  %431 = call i32 @kfree(%struct.TYPE_6__* %430)
  %432 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %433 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %434, align 8
  %435 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %436 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 1
  store %struct.mcp_kreq_ether_send* null, %struct.mcp_kreq_ether_send** %437, align 8
  br label %438

438:                                              ; preds = %426, %93
  %439 = load i32, i32* %13, align 4
  store i32 %439, i32* %2, align 4
  br label %440

440:                                              ; preds = %438, %287, %48
  %441 = load i32, i32* %2, align 4
  ret i32 %441
}

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv*, %struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @myri10ge_unmap_rx_page(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
