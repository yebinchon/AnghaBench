; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i8*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.dr_qp_init_attr = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QUEUE_SIZE = common dso_local global i32 0, align 4
@DR_STE_SIZE = common dso_local global i32 0, align 4
@SIGNAL_PER_DIV_QUEUE = common dso_local global i32 0, align 4
@DR_CHUNK_SIZE_1K = common dso_local global i32 0, align 4
@DR_ICM_TYPE_STE = common dso_local global i32 0, align 4
@MIN_READ_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_send_ring_alloc(%struct.mlx5dr_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.dr_qp_init_attr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  %8 = bitcast %struct.dr_qp_init_attr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 64, i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_11__*
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %12, i32 0, i32 0
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %13, align 8
  %14 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %264

21:                                               ; preds = %1
  %22 = load i32, i32* @QUEUE_SIZE, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.TYPE_13__* @dr_create_cq(i32 %26, i32 %29, i32 %30)
  %32 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %35, align 8
  %36 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %21
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %258

45:                                               ; preds = %21
  %46 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.dr_qp_init_attr, %struct.dr_qp_init_attr* %4, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.dr_qp_init_attr, %struct.dr_qp_init_attr* %4, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.dr_qp_init_attr, %struct.dr_qp_init_attr* %4, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @QUEUE_SIZE, align 4
  %64 = getelementptr inbounds %struct.dr_qp_init_attr, %struct.dr_qp_init_attr* %4, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_12__* @dr_create_rc_qp(i32 %67, %struct.dr_qp_init_attr* %4)
  %69 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %72, align 8
  %73 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %45
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %248

82:                                               ; preds = %45
  %83 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %84 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %89 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %93, align 8
  %94 = load i32, i32* @QUEUE_SIZE, align 4
  %95 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %96 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %99 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DR_STE_SIZE, align 4
  %106 = call i32 @min(i32 %104, i32 %105)
  %107 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %108 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %111 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SIGNAL_PER_DIV_QUEUE, align 4
  %115 = sdiv i32 %113, %114
  %116 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %117 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  %120 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %121 = call i32 @dr_prepare_qp_to_rts(%struct.mlx5dr_domain* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %82
  br label %238

125:                                              ; preds = %82
  %126 = load i32, i32* @DR_CHUNK_SIZE_1K, align 4
  %127 = load i32, i32* @DR_ICM_TYPE_STE, align 4
  %128 = call i32 @mlx5dr_icm_pool_chunk_size_to_byte(i32 %126, i32 %127)
  %129 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %130 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  %133 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %134 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %139 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %138, i32 0, i32 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %137, %142
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call i8* @kzalloc(i32 %144, i32 %145)
  %147 = bitcast i8* %146 to %struct.TYPE_11__*
  %148 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %149 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 5
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %151, align 8
  %152 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %153 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %152, i32 0, i32 0
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = icmp ne %struct.TYPE_11__* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %125
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %7, align 4
  br label %238

161:                                              ; preds = %125
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %164 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %163, i32 0, i32 0
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  store i32 %162, i32* %166, align 8
  %167 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %168 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %171 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %174 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %173, i32 0, i32 0
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i8* @dr_reg_mr(i32 %169, i32 %172, %struct.TYPE_11__* %177, i32 %178)
  %180 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %181 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 6
  store i8* %179, i8** %183, align 8
  %184 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %185 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 6
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %161
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %7, align 4
  br label %231

193:                                              ; preds = %161
  %194 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %195 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %198 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %201 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %200, i32 0, i32 0
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load i32, i32* @MIN_READ_SYNC, align 4
  %206 = call i8* @dr_reg_mr(i32 %196, i32 %199, %struct.TYPE_11__* %204, i32 %205)
  %207 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %208 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %207, i32 0, i32 0
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 7
  store i8* %206, i8** %210, align 8
  %211 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %212 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %211, i32 0, i32 0
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 7
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %193
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %7, align 4
  br label %221

220:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %264

221:                                              ; preds = %217
  %222 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %223 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %226 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %225, i32 0, i32 0
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 6
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @dr_dereg_mr(i32 %224, i8* %229)
  br label %231

231:                                              ; preds = %221, %190
  %232 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %233 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %232, i32 0, i32 0
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = call i32 @kfree(%struct.TYPE_11__* %236)
  br label %238

238:                                              ; preds = %231, %158, %124
  %239 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %240 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %243 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %242, i32 0, i32 0
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 4
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = call i32 @dr_destroy_qp(i32 %241, %struct.TYPE_12__* %246)
  br label %248

248:                                              ; preds = %238, %79
  %249 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %250 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %253 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %252, i32 0, i32 0
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = call i32 @dr_destroy_cq(i32 %251, %struct.TYPE_13__* %256)
  br label %258

258:                                              ; preds = %248, %42
  %259 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %260 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %259, i32 0, i32 0
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  %262 = call i32 @kfree(%struct.TYPE_11__* %261)
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %258, %220, %18
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local %struct.TYPE_13__* @dr_create_cq(i32, i32, i32) #2

declare dso_local %struct.TYPE_12__* @dr_create_rc_qp(i32, %struct.dr_qp_init_attr*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @dr_prepare_qp_to_rts(%struct.mlx5dr_domain*) #2

declare dso_local i32 @mlx5dr_icm_pool_chunk_size_to_byte(i32, i32) #2

declare dso_local i8* @dr_reg_mr(i32, i32, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @dr_dereg_mr(i32, i8*) #2

declare dso_local i32 @kfree(%struct.TYPE_11__*) #2

declare dso_local i32 @dr_destroy_qp(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @dr_destroy_cq(i32, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
