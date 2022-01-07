; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_sge_alloc_qset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_sge_alloc_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.sge_qset* }
%struct.sge_qset = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.netdev_queue*, %struct.net_device*, %struct.adapter*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.qset_params = type { i32, i32, i32, i32*, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@sge_timer_tx = common dso_local global i32 0, align 4
@sge_timer_rx = common dso_local global i32 0, align 4
@TXQ_CTRL = common dso_local global i32 0, align 4
@TXQ_OFLD = common dso_local global i64 0, align 8
@restart_offloadq = common dso_local global i32 0, align 4
@restart_ctrlq = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@TXQ_ETH = common dso_local global i64 0, align 8
@SGE_RX_SM_BUF_SIZE = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@FL0_PG_CHUNK_SIZE = common dso_local global i64 0, align 8
@FL1_PG_CHUNK_SIZE = common dso_local global i64 0, align 8
@FL0_PG_ORDER = common dso_local global i32 0, align 4
@FL1_PG_ORDER = common dso_local global i32 0, align 4
@FL0_PG_ALLOC_SIZE = common dso_local global i32 0, align 4
@FL1_PG_ALLOC_SIZE = common dso_local global i32 0, align 4
@SGE_PG_RSVD = common dso_local global i32 0, align 4
@SGE_RXQ_PER_SET = common dso_local global i32 0, align 4
@USE_GTS = common dso_local global i32 0, align 4
@SGE_CNTXT_ETH = common dso_local global i32 0, align 4
@SGE_CNTXT_OFLD = common dso_local global i32 0, align 4
@SGE_CNTXT_CTRL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"free list queue 0 initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"free list queue 0 enabled with %d credits\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"free list queue 1 enabled with %d credits\0A\00", align 1
@A_SG_GTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_alloc_qset(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, %struct.qset_params* %4, i32 %5, %struct.net_device* %6, %struct.netdev_queue* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qset_params*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.netdev_queue*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sge_qset*, align 8
  %22 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.qset_params* %4, %struct.qset_params** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.net_device* %6, %struct.net_device** %16, align 8
  store %struct.netdev_queue* %7, %struct.netdev_queue** %17, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %20, align 4
  %25 = load %struct.adapter*, %struct.adapter** %10, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.sge_qset*, %struct.sge_qset** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %28, i64 %30
  store %struct.sge_qset* %31, %struct.sge_qset** %21, align 8
  %32 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @init_qset_cntxt(%struct.sge_qset* %32, i32 %33)
  %35 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %36 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %35, i32 0, i32 7
  %37 = load i32, i32* @sge_timer_tx, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %40 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %39, i32 0, i32 6
  %41 = load i32, i32* @sge_timer_rx, align 4
  %42 = call i32 @timer_setup(i32* %40, i32 %41, i32 0)
  %43 = load %struct.adapter*, %struct.adapter** %10, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %47 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %50 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %55 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 9
  %59 = call i8* @alloc_ring(i32 %45, i32 %48, i32 4, i64 4, i32* %53, i32* %58)
  %60 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %61 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 8
  store i8* %59, i8** %64, align 8
  %65 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %66 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %8
  br label %670

73:                                               ; preds = %8
  %74 = load %struct.adapter*, %struct.adapter** %10, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %78 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %81 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %86 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 9
  %90 = call i8* @alloc_ring(i32 %76, i32 %79, i32 4, i64 4, i32* %84, i32* %89)
  %91 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %92 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 8
  store i8* %90, i8** %95, align 8
  %96 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %97 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 8
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %73
  br label %670

104:                                              ; preds = %73
  %105 = load %struct.adapter*, %struct.adapter** %10, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %109 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %112 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = call i8* @alloc_ring(i32 %107, i32 %110, i32 4, i64 0, i32* %113, i32* null)
  %115 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %116 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 7
  store i8* %114, i8** %117, align 8
  %118 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %119 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %104
  br label %670

124:                                              ; preds = %104
  store i32 0, i32* %18, align 4
  br label %125

125:                                              ; preds = %216, %124
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %219

129:                                              ; preds = %125
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @TXQ_CTRL, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i64 0, i64 4
  store i64 %134, i64* %22, align 8
  %135 = load %struct.adapter*, %struct.adapter** %10, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %139 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %22, align 8
  %146 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %147 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %146, i32 0, i32 5
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  %153 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %154 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %153, i32 0, i32 5
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 10
  %160 = call i8* @alloc_ring(i32 %137, i32 %144, i32 4, i64 %145, i32* %152, i32* %159)
  %161 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %162 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %161, i32 0, i32 5
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 9
  store i8* %160, i8** %167, align 8
  %168 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %169 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %168, i32 0, i32 5
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 9
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %129
  br label %670

178:                                              ; preds = %129
  %179 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %180 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %179, i32 0, i32 5
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %187 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %194 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %193, i32 0, i32 5
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  store i32 %192, i32* %199, align 4
  %200 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %201 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %200, i32 0, i32 5
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 8
  %207 = call i32 @spin_lock_init(i32* %206)
  %208 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %209 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %208, i32 0, i32 5
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 7
  %215 = call i32 @skb_queue_head_init(i32* %214)
  br label %216

216:                                              ; preds = %178
  %217 = load i32, i32* %18, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %18, align 4
  br label %125

219:                                              ; preds = %125
  %220 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %221 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %220, i32 0, i32 5
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = load i64, i64* @TXQ_OFLD, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 6
  %226 = load i32, i32* @restart_offloadq, align 4
  %227 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %228 = ptrtoint %struct.sge_qset* %227 to i64
  %229 = call i32 @tasklet_init(i32* %225, i32 %226, i64 %228)
  %230 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %231 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %230, i32 0, i32 5
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = load i32, i32* @TXQ_CTRL, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 6
  %237 = load i32, i32* @restart_ctrlq, align 4
  %238 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %239 = ptrtoint %struct.sge_qset* %238 to i64
  %240 = call i32 @tasklet_init(i32* %236, i32 %237, i64 %239)
  %241 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %242 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %241, i32 0, i32 1
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i64 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  store i32 1, i32* %245, align 8
  %246 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %247 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %246, i32 0, i32 1
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  %251 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %252 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %255 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %254, i32 0, i32 1
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  store i32 %253, i32* %258, align 4
  %259 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %260 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %263 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %262, i32 0, i32 1
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i64 1
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  store i32 %261, i32* %266, align 4
  %267 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %268 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  store i32 1, i32* %269, align 8
  %270 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %271 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %274 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  %276 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %277 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 6
  %279 = call i32 @spin_lock_init(i32* %278)
  %280 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %281 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 5
  %283 = call i32 @skb_queue_head_init(i32* %282)
  %284 = load i32, i32* %12, align 4
  %285 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %286 = add nsw i64 %285, 1
  %287 = call i64 @sgl_len(i64 %286)
  %288 = add nsw i64 %287, 3
  %289 = call i32 @flits_to_desc(i64 %288)
  %290 = mul nsw i32 %284, %289
  %291 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %292 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %291, i32 0, i32 5
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %292, align 8
  %294 = load i64, i64* @TXQ_ETH, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 2
  store i32 %290, i32* %296, align 8
  %297 = load i32, i32* @SGE_RX_SM_BUF_SIZE, align 4
  %298 = sext i32 %297 to i64
  %299 = add i64 %298, 4
  %300 = trunc i64 %299 to i32
  %301 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %302 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %301, i32 0, i32 1
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 2
  store i32 %300, i32* %305, align 8
  %306 = load %struct.adapter*, %struct.adapter** %10, align 8
  %307 = call i64 @is_offload(%struct.adapter* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %219
  %310 = call i32 @SKB_DATA_ALIGN(i32 4)
  %311 = sub nsw i32 16384, %310
  %312 = sext i32 %311 to i64
  br label %318

313:                                              ; preds = %219
  %314 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %315 = add nsw i32 %314, 2
  %316 = sext i32 %315 to i64
  %317 = add i64 %316, 4
  br label %318

318:                                              ; preds = %313, %309
  %319 = phi i64 [ %312, %309 ], [ %317, %313 ]
  %320 = trunc i64 %319 to i32
  %321 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %322 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %321, i32 0, i32 1
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i64 1
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 2
  store i32 %320, i32* %325, align 8
  %326 = load i64, i64* @FL0_PG_CHUNK_SIZE, align 8
  %327 = icmp sgt i64 %326, 0
  %328 = zext i1 %327 to i32
  %329 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %330 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %329, i32 0, i32 1
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i64 0
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 3
  store i32 %328, i32* %333, align 4
  %334 = load i64, i64* @FL1_PG_CHUNK_SIZE, align 8
  %335 = icmp sgt i64 %334, 0
  %336 = zext i1 %335 to i32
  %337 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %338 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %337, i32 0, i32 1
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i64 1
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 3
  store i32 %336, i32* %341, align 4
  %342 = load i32, i32* @FL0_PG_ORDER, align 4
  %343 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %344 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %343, i32 0, i32 1
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i64 0
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 7
  store i32 %342, i32* %347, align 4
  %348 = load i32, i32* @FL1_PG_ORDER, align 4
  %349 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %350 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %349, i32 0, i32 1
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i64 1
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 7
  store i32 %348, i32* %353, align 4
  %354 = load i32, i32* @FL0_PG_ALLOC_SIZE, align 4
  %355 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %356 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %355, i32 0, i32 1
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i64 0
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 6
  store i32 %354, i32* %359, align 8
  %360 = load i32, i32* @FL1_PG_ALLOC_SIZE, align 4
  %361 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %362 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %361, i32 0, i32 1
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i64 1
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 6
  store i32 %360, i32* %365, align 8
  %366 = load %struct.adapter*, %struct.adapter** %10, align 8
  %367 = getelementptr inbounds %struct.adapter, %struct.adapter* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 0
  %369 = call i32 @spin_lock_irq(i32* %368)
  %370 = load %struct.adapter*, %struct.adapter** %10, align 8
  %371 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %372 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %13, align 4
  %376 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %377 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %381 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %385 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %384, i32 0, i32 1
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i64 0
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @SGE_PG_RSVD, align 4
  %391 = sub nsw i32 %389, %390
  %392 = call i32 @t3_sge_init_rspcntxt(%struct.adapter* %370, i32 %374, i32 %375, i32 %379, i32 %383, i32 %391, i32 1, i32 0)
  store i32 %392, i32* %20, align 4
  %393 = load i32, i32* %20, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %318
  br label %665

396:                                              ; preds = %318
  store i32 0, i32* %18, align 4
  br label %397

397:                                              ; preds = %445, %396
  %398 = load i32, i32* %18, align 4
  %399 = load i32, i32* @SGE_RXQ_PER_SET, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %448

401:                                              ; preds = %397
  %402 = load %struct.adapter*, %struct.adapter** %10, align 8
  %403 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %404 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %403, i32 0, i32 1
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %404, align 8
  %406 = load i32, i32* %18, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %412 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %411, i32 0, i32 1
  %413 = load %struct.TYPE_8__*, %struct.TYPE_8__** %412, align 8
  %414 = load i32, i32* %18, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %420 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %419, i32 0, i32 1
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %420, align 8
  %422 = load i32, i32* %18, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %428 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %427, i32 0, i32 1
  %429 = load %struct.TYPE_8__*, %struct.TYPE_8__** %428, align 8
  %430 = load i32, i32* %18, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @SGE_PG_RSVD, align 4
  %436 = sub nsw i32 %434, %435
  %437 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %438 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @t3_sge_init_flcntxt(%struct.adapter* %402, i32 %410, i32 0, i32 %418, i32 %426, i32 %436, i32 %439, i32 1, i32 0)
  store i32 %440, i32* %20, align 4
  %441 = load i32, i32* %20, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %401
  br label %665

444:                                              ; preds = %401
  br label %445

445:                                              ; preds = %444
  %446 = load i32, i32* %18, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %18, align 4
  br label %397

448:                                              ; preds = %397
  %449 = load %struct.adapter*, %struct.adapter** %10, align 8
  %450 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %451 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %450, i32 0, i32 5
  %452 = load %struct.TYPE_5__*, %struct.TYPE_5__** %451, align 8
  %453 = load i64, i64* @TXQ_ETH, align 8
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* @USE_GTS, align 4
  %458 = load i32, i32* @SGE_CNTXT_ETH, align 4
  %459 = load i32, i32* %11, align 4
  %460 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %461 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %460, i32 0, i32 5
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %461, align 8
  %463 = load i64, i64* @TXQ_ETH, align 8
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 4
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %468 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %467, i32 0, i32 5
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %468, align 8
  %470 = load i64, i64* @TXQ_ETH, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %475 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %474, i32 0, i32 5
  %476 = load %struct.TYPE_5__*, %struct.TYPE_5__** %475, align 8
  %477 = load i64, i64* @TXQ_ETH, align 8
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %476, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @t3_sge_init_ecntxt(%struct.adapter* %449, i32 %456, i32 %457, i32 %458, i32 %459, i32 %466, i32 %473, i32 %480, i32 1, i32 0)
  store i32 %481, i32* %20, align 4
  %482 = load i32, i32* %20, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %448
  br label %665

485:                                              ; preds = %448
  %486 = load i32, i32* %15, align 4
  %487 = icmp sgt i32 %486, 1
  br i1 %487, label %488, label %519

488:                                              ; preds = %485
  %489 = load %struct.adapter*, %struct.adapter** %10, align 8
  %490 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %491 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %490, i32 0, i32 5
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %491, align 8
  %493 = load i64, i64* @TXQ_OFLD, align 8
  %494 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 5
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* @USE_GTS, align 4
  %498 = load i32, i32* @SGE_CNTXT_OFLD, align 4
  %499 = load i32, i32* %11, align 4
  %500 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %501 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %500, i32 0, i32 5
  %502 = load %struct.TYPE_5__*, %struct.TYPE_5__** %501, align 8
  %503 = load i64, i64* @TXQ_OFLD, align 8
  %504 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %502, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i32 0, i32 4
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %508 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %507, i32 0, i32 5
  %509 = load %struct.TYPE_5__*, %struct.TYPE_5__** %508, align 8
  %510 = load i64, i64* @TXQ_OFLD, align 8
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @t3_sge_init_ecntxt(%struct.adapter* %489, i32 %496, i32 %497, i32 %498, i32 %499, i32 %506, i32 %513, i32 0, i32 1, i32 0)
  store i32 %514, i32* %20, align 4
  %515 = load i32, i32* %20, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %488
  br label %665

518:                                              ; preds = %488
  br label %519

519:                                              ; preds = %518, %485
  %520 = load i32, i32* %15, align 4
  %521 = icmp sgt i32 %520, 2
  br i1 %521, label %522, label %563

522:                                              ; preds = %519
  %523 = load %struct.adapter*, %struct.adapter** %10, align 8
  %524 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %525 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %524, i32 0, i32 5
  %526 = load %struct.TYPE_5__*, %struct.TYPE_5__** %525, align 8
  %527 = load i32, i32* @TXQ_CTRL, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 5
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @SGE_CNTXT_CTRL, align 4
  %533 = load i32, i32* %11, align 4
  %534 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %535 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %534, i32 0, i32 5
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** %535, align 8
  %537 = load i32, i32* @TXQ_CTRL, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %539, i32 0, i32 4
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %543 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %542, i32 0, i32 5
  %544 = load %struct.TYPE_5__*, %struct.TYPE_5__** %543, align 8
  %545 = load i32, i32* @TXQ_CTRL, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %544, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %551 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %550, i32 0, i32 5
  %552 = load %struct.TYPE_5__*, %struct.TYPE_5__** %551, align 8
  %553 = load i32, i32* @TXQ_CTRL, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %555, i32 0, i32 3
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @t3_sge_init_ecntxt(%struct.adapter* %523, i32 %531, i32 0, i32 %532, i32 %533, i32 %541, i32 %549, i32 %557, i32 1, i32 0)
  store i32 %558, i32* %20, align 4
  %559 = load i32, i32* %20, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %522
  br label %665

562:                                              ; preds = %522
  br label %563

563:                                              ; preds = %562, %519
  %564 = load %struct.adapter*, %struct.adapter** %10, align 8
  %565 = getelementptr inbounds %struct.adapter, %struct.adapter* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i32 0, i32 0
  %567 = call i32 @spin_unlock_irq(i32* %566)
  %568 = load %struct.adapter*, %struct.adapter** %10, align 8
  %569 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %570 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %569, i32 0, i32 4
  store %struct.adapter* %568, %struct.adapter** %570, align 8
  %571 = load %struct.net_device*, %struct.net_device** %16, align 8
  %572 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %573 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %572, i32 0, i32 3
  store %struct.net_device* %571, %struct.net_device** %573, align 8
  %574 = load %struct.netdev_queue*, %struct.netdev_queue** %17, align 8
  %575 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %576 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %575, i32 0, i32 2
  store %struct.netdev_queue* %574, %struct.netdev_queue** %576, align 8
  %577 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %578 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %579 = call i32 @t3_update_qset_coalesce(%struct.sge_qset* %577, %struct.qset_params* %578)
  %580 = load %struct.adapter*, %struct.adapter** %10, align 8
  %581 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %582 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %581, i32 0, i32 1
  %583 = load %struct.TYPE_8__*, %struct.TYPE_8__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i64 0
  %585 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %586 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %585, i32 0, i32 1
  %587 = load %struct.TYPE_8__*, %struct.TYPE_8__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %587, i64 0
  %589 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* @GFP_KERNEL, align 4
  %592 = load i32, i32* @__GFP_COMP, align 4
  %593 = or i32 %591, %592
  %594 = call i32 @refill_fl(%struct.adapter* %580, %struct.TYPE_8__* %584, i32 %590, i32 %593)
  store i32 %594, i32* %19, align 4
  %595 = load i32, i32* %19, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %600, label %597

597:                                              ; preds = %563
  %598 = load %struct.adapter*, %struct.adapter** %10, align 8
  %599 = call i32 @CH_ALERT(%struct.adapter* %598, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %670

600:                                              ; preds = %563
  %601 = load i32, i32* %19, align 4
  %602 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %603 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %602, i32 0, i32 1
  %604 = load %struct.TYPE_8__*, %struct.TYPE_8__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %604, i64 0
  %606 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = icmp slt i32 %601, %607
  br i1 %608, label %609, label %613

609:                                              ; preds = %600
  %610 = load %struct.adapter*, %struct.adapter** %10, align 8
  %611 = load i32, i32* %19, align 4
  %612 = call i32 @CH_WARN(%struct.adapter* %610, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %611)
  br label %613

613:                                              ; preds = %609, %600
  %614 = load %struct.adapter*, %struct.adapter** %10, align 8
  %615 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %616 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %615, i32 0, i32 1
  %617 = load %struct.TYPE_8__*, %struct.TYPE_8__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %617, i64 1
  %619 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %620 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %619, i32 0, i32 1
  %621 = load %struct.TYPE_8__*, %struct.TYPE_8__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %621, i64 1
  %623 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 4
  %625 = load i32, i32* @GFP_KERNEL, align 4
  %626 = load i32, i32* @__GFP_COMP, align 4
  %627 = or i32 %625, %626
  %628 = call i32 @refill_fl(%struct.adapter* %614, %struct.TYPE_8__* %618, i32 %624, i32 %627)
  store i32 %628, i32* %19, align 4
  %629 = load i32, i32* %19, align 4
  %630 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %631 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %630, i32 0, i32 1
  %632 = load %struct.TYPE_8__*, %struct.TYPE_8__** %631, align 8
  %633 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %632, i64 1
  %634 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = icmp slt i32 %629, %635
  br i1 %636, label %637, label %641

637:                                              ; preds = %613
  %638 = load %struct.adapter*, %struct.adapter** %10, align 8
  %639 = load i32, i32* %19, align 4
  %640 = call i32 @CH_WARN(%struct.adapter* %638, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %639)
  br label %641

641:                                              ; preds = %637, %613
  %642 = load %struct.adapter*, %struct.adapter** %10, align 8
  %643 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %644 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %643, i32 0, i32 0
  %645 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %646 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = sub nsw i32 %648, 1
  %650 = call i32 @refill_rspq(%struct.adapter* %642, %struct.TYPE_7__* %644, i32 %649)
  %651 = load %struct.adapter*, %struct.adapter** %10, align 8
  %652 = load i32, i32* @A_SG_GTS, align 4
  %653 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %654 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %653, i32 0, i32 0
  %655 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %654, i32 0, i32 3
  %656 = load i32, i32* %655, align 4
  %657 = call i32 @V_RSPQ(i32 %656)
  %658 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %659 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 8
  %662 = call i32 @V_NEWTIMER(i32 %661)
  %663 = or i32 %657, %662
  %664 = call i32 @t3_write_reg(%struct.adapter* %651, i32 %652, i32 %663)
  store i32 0, i32* %9, align 4
  br label %675

665:                                              ; preds = %561, %517, %484, %443, %395
  %666 = load %struct.adapter*, %struct.adapter** %10, align 8
  %667 = getelementptr inbounds %struct.adapter, %struct.adapter* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %667, i32 0, i32 0
  %669 = call i32 @spin_unlock_irq(i32* %668)
  br label %670

670:                                              ; preds = %665, %597, %177, %123, %103, %72
  %671 = load %struct.adapter*, %struct.adapter** %10, align 8
  %672 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %673 = call i32 @t3_free_qset(%struct.adapter* %671, %struct.sge_qset* %672)
  %674 = load i32, i32* %20, align 4
  store i32 %674, i32* %9, align 4
  br label %675

675:                                              ; preds = %670, %641
  %676 = load i32, i32* %9, align 4
  ret i32 %676
}

declare dso_local i32 @init_qset_cntxt(%struct.sge_qset*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i8* @alloc_ring(i32, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @flits_to_desc(i64) #1

declare dso_local i64 @sgl_len(i64) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @t3_sge_init_rspcntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t3_sge_init_flcntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t3_sge_init_ecntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @t3_update_qset_coalesce(%struct.sge_qset*, %struct.qset_params*) #1

declare dso_local i32 @refill_fl(%struct.adapter*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32) #1

declare dso_local i32 @refill_rspq(%struct.adapter*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RSPQ(i32) #1

declare dso_local i32 @V_NEWTIMER(i32) #1

declare dso_local i32 @t3_free_qset(%struct.adapter*, %struct.sge_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
