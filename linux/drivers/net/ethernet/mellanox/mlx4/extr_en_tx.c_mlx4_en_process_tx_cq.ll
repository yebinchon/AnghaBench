; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_process_tx_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_process_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_cq = type { i64, i64, i32, %struct.mlx4_cqe*, %struct.mlx4_cq }
%struct.mlx4_cqe = type { i32, i32 }
%struct.mlx4_cq = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, i32, %struct.mlx4_en_tx_ring*** }
%struct.mlx4_en_tx_ring = type { i32, i32 (%struct.mlx4_en_priv.0*, %struct.mlx4_en_tx_ring*, i64, i32, i32)*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.mlx4_en_priv.0 = type opaque
%struct.TYPE_2__ = type { i32, i64 }
%struct.mlx4_err_cqe = type { i32, i32 }

@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"CQE error - vendor syndrome: 0x%x syndrome: 0x%x\0A\00", align 1
@TX_XDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_process_tx_cq(%struct.net_device* %0, %struct.mlx4_en_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_cq*, align 8
  %10 = alloca %struct.mlx4_en_tx_ring*, align 8
  %11 = alloca %struct.mlx4_cqe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mlx4_cqe*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.mlx4_err_cqe*, align 8
  %30 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %31)
  store %struct.mlx4_en_priv* %32, %struct.mlx4_en_priv** %8, align 8
  %33 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %33, i32 0, i32 4
  store %struct.mlx4_cq* %34, %struct.mlx4_cq** %9, align 8
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 4
  %37 = load %struct.mlx4_en_tx_ring***, %struct.mlx4_en_tx_ring**** %36, align 8
  %38 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %37, i64 %40
  %42 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %41, align 8
  %43 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %42, i64 %45
  %47 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %46, align 8
  store %struct.mlx4_en_tx_ring* %47, %struct.mlx4_en_tx_ring** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %48 = load %struct.mlx4_cq*, %struct.mlx4_cq** %9, align 8
  %49 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %17, align 4
  %51 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %18, align 4
  %54 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %19, align 4
  %57 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %57, i32 0, i32 3
  %59 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %58, align 8
  store %struct.mlx4_cqe* %59, %struct.mlx4_cqe** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %25, align 4
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %304

75:                                               ; preds = %3
  %76 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netdev_txq_bql_complete_prefetchw(i32 %78)
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %19, align 4
  %82 = and i32 %80, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %12, align 8
  %84 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %20, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.mlx4_cqe* @mlx4_en_get_cqe(%struct.mlx4_cqe* %84, i64 %85, i32 %88)
  %90 = load i32, i32* %23, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %89, i64 %91
  store %struct.mlx4_cqe* %92, %struct.mlx4_cqe** %11, align 8
  %93 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @READ_ONCE(i32 %95)
  store i32 %96, i32* %26, align 4
  %97 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @READ_ONCE(i32 %99)
  store i32 %100, i32* %27, align 4
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* %19, align 4
  %103 = and i32 %101, %102
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  store i64 %105, i64* %14, align 8
  br label %106

106:                                              ; preds = %229, %75
  %107 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %11, align 8
  %108 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = and i32 %112, %113
  %115 = call i64 @XNOR(i32 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load i32, i32* %24, align 4
  %119 = load i32, i32* %25, align 4
  %120 = icmp slt i32 %118, %119
  br label %121

121:                                              ; preds = %117, %106
  %122 = phi i1 [ false, %106 ], [ %120, %117 ]
  br i1 %122, label %123, label %245

123:                                              ; preds = %121
  %124 = call i32 (...) @dma_rmb()
  %125 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %11, align 8
  %126 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @MLX4_CQE_OPCODE_ERROR, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %123
  %136 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %11, align 8
  %137 = bitcast %struct.mlx4_cqe* %136 to %struct.mlx4_err_cqe*
  store %struct.mlx4_err_cqe* %137, %struct.mlx4_err_cqe** %29, align 8
  %138 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %139 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %29, align 8
  %140 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %29, align 8
  %143 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @en_err(%struct.mlx4_en_priv* %138, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %135, %123
  %147 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %11, align 8
  %148 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @be16_to_cpu(i32 %149)
  %151 = load i32, i32* %19, align 4
  %152 = and i32 %150, %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %28, align 8
  br label %154

154:                                              ; preds = %227, %146
  store i32 0, i32* %30, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %15, align 4
  %158 = load i64, i64* %13, align 8
  %159 = load i32, i32* %26, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %158, %160
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = and i64 %161, %163
  store i64 %164, i64* %13, align 8
  %165 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %166 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %165, i32 0, i32 7
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %154
  %175 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %11, align 8
  %176 = call i32 @mlx4_en_get_cqe_ts(%struct.mlx4_cqe* %175)
  store i32 %176, i32* %30, align 4
  br label %177

177:                                              ; preds = %174, %154
  %178 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %179 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %178, i32 0, i32 1
  %180 = load i32 (%struct.mlx4_en_priv.0*, %struct.mlx4_en_tx_ring*, i64, i32, i32)*, i32 (%struct.mlx4_en_priv.0*, %struct.mlx4_en_tx_ring*, i64, i32, i32)** %179, align 8
  %181 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %182 = bitcast %struct.mlx4_en_priv* %181 to %struct.mlx4_en_priv.0*
  %183 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %184 = load i64, i64* %13, align 8
  %185 = load i32, i32* %30, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 %180(%struct.mlx4_en_priv.0* %182, %struct.mlx4_en_tx_ring* %183, i64 %184, i32 %185, i32 %186)
  store i32 %187, i32* %26, align 4
  %188 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %189 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %191, %192
  %194 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %195 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %193, %196
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = call i32 @mlx4_en_stamp_wqe(%struct.mlx4_en_priv* %188, %struct.mlx4_en_tx_ring* %189, i64 %190, i32 %201)
  %203 = load i64, i64* %13, align 8
  store i64 %203, i64* %14, align 8
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %16, align 4
  %205 = load i32, i32* %21, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %21, align 4
  %207 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %208 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %207, i32 0, i32 7
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = load i64, i64* %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %22, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %22, align 4
  br label %218

218:                                              ; preds = %177
  %219 = load i32, i32* %24, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %24, align 4
  %221 = load i32, i32* %25, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i64, i64* %13, align 8
  %225 = load i64, i64* %28, align 8
  %226 = icmp ne i64 %224, %225
  br label %227

227:                                              ; preds = %223, %218
  %228 = phi i1 [ false, %218 ], [ %226, %223 ]
  br i1 %228, label %154, label %229

229:                                              ; preds = %227
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %17, align 4
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %19, align 4
  %234 = and i32 %232, %233
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %12, align 8
  %236 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %20, align 8
  %237 = load i64, i64* %12, align 8
  %238 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %239 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call %struct.mlx4_cqe* @mlx4_en_get_cqe(%struct.mlx4_cqe* %236, i64 %237, i32 %240)
  %242 = load i32, i32* %23, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %241, i64 %243
  store %struct.mlx4_cqe* %244, %struct.mlx4_cqe** %11, align 8
  br label %106

245:                                              ; preds = %121
  %246 = load i32, i32* %17, align 4
  %247 = load %struct.mlx4_cq*, %struct.mlx4_cq** %9, align 8
  %248 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  %249 = load %struct.mlx4_cq*, %struct.mlx4_cq** %9, align 8
  %250 = call i32 @mlx4_cq_set_ci(%struct.mlx4_cq* %249)
  %251 = call i32 (...) @wmb()
  %252 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %253 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %26, align 4
  %256 = call i32 @WRITE_ONCE(i32 %254, i32 %255)
  %257 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %258 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %27, align 4
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %260, %261
  %263 = call i32 @WRITE_ONCE(i32 %259, i32 %262)
  %264 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %265 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @TX_XDP, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %245
  %270 = load i32, i32* %24, align 4
  %271 = load i32, i32* %25, align 4
  %272 = icmp slt i32 %270, %271
  %273 = zext i1 %272 to i32
  store i32 %273, i32* %4, align 4
  br label %304

274:                                              ; preds = %245
  %275 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %276 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %22, align 4
  %280 = call i32 @netdev_tx_completed_queue(i32 %277, i32 %278, i32 %279)
  %281 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %282 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @netif_tx_queue_stopped(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %274
  %287 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %288 = call i32 @mlx4_en_is_tx_ring_full(%struct.mlx4_en_tx_ring* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %299, label %290

290:                                              ; preds = %286
  %291 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %292 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @netif_tx_wake_queue(i32 %293)
  %295 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  %296 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %290, %286, %274
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* %25, align 4
  %302 = icmp slt i32 %300, %301
  %303 = zext i1 %302 to i32
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %299, %269, %74
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_txq_bql_complete_prefetchw(i32) #1

declare dso_local %struct.mlx4_cqe* @mlx4_en_get_cqe(%struct.mlx4_cqe*, i64, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @XNOR(i32, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_en_get_cqe_ts(%struct.mlx4_cqe*) #1

declare dso_local i32 @mlx4_en_stamp_wqe(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i64, i32) #1

declare dso_local i32 @mlx4_cq_set_ci(%struct.mlx4_cq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(i32, i32, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(i32) #1

declare dso_local i32 @mlx4_en_is_tx_ring_full(%struct.mlx4_en_tx_ring*) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
