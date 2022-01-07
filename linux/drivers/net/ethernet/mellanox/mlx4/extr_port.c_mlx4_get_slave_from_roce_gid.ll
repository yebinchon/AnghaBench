; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_slave_from_roce_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_slave_from_roce_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_slaves_pport = type { i32 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_ROCE_MAX_GIDS = common dso_local global i32 0, align 4
@MLX4_ROCE_PF_GIDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_ROCE_GID_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_slave_from_roce_gid(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_slaves_pport, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_slaves_pport, align 4
  %18 = alloca %struct.mlx4_active_ports, align 4
  %19 = alloca %struct.mlx4_active_ports, align 4
  %20 = alloca %struct.mlx4_slaves_pport, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.mlx4_slaves_pport, align 4
  %25 = alloca %struct.mlx4_active_ports, align 4
  %26 = alloca %struct.mlx4_slaves_pport, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %28 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %27)
  store %struct.mlx4_priv* %28, %struct.mlx4_priv** %10, align 8
  store i32 -1, i32* %12, align 4
  %29 = load i32, i32* @MLX4_ROCE_MAX_GIDS, align 4
  %30 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %33 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %258

38:                                               ; preds = %4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %39, i32 %40)
  %42 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %17, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = bitcast %struct.mlx4_slaves_pport* %14 to i8*
  %44 = bitcast %struct.mlx4_slaves_pport* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @bitmap_weight(i32 %46, i32 %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %81, %38
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @MLX4_ROCE_MAX_GIDS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %61 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @MLX4_ROCE_GID_ENTRY_SIZE, align 4
  %76 = call i32 @memcmp(i32 %73, i32* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %12, align 4
  br label %84

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %55

84:                                               ; preds = %78, %55
  %85 = load i32, i32* %12, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %249

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %16, align 4
  br label %138

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %15, align 4
  %97 = urem i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %15, align 4
  %100 = udiv i32 %98, %99
  %101 = add i32 %100, 1
  %102 = mul i32 %97, %101
  %103 = add i32 %94, %102
  %104 = icmp ult i32 %93, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %15, align 4
  %111 = udiv i32 %109, %110
  %112 = add i32 %111, 1
  %113 = udiv i32 %108, %112
  %114 = add i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %137

115:                                              ; preds = %92
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %15, align 4
  %121 = urem i32 %119, %120
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %15, align 4
  %124 = udiv i32 %122, %123
  %125 = add i32 %124, 1
  %126 = mul i32 %121, %125
  %127 = sub i32 %118, %126
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %15, align 4
  %130 = udiv i32 %128, %129
  %131 = udiv i32 %127, %130
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %15, align 4
  %134 = urem i32 %132, %133
  %135 = add i32 %131, %134
  %136 = add i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %115, %105
  br label %138

138:                                              ; preds = %137, %91
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %246

141:                                              ; preds = %138
  store i32 0, i32* %22, align 4
  store i32 1, i32* %11, align 4
  br label %142

142:                                              ; preds = %175, %141
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %178

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %18, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %150 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @bitmap_zero(i32 %148, i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 %154, 1
  %156 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %18, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @set_bit(i32 %155, i32 %157)
  %159 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %160 = call i32 @mlx4_phys_to_slaves_pport_actv(%struct.mlx4_dev* %159, %struct.mlx4_active_ports* %18)
  %161 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %24, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = bitcast %struct.mlx4_slaves_pport* %20 to i8*
  %163 = bitcast %struct.mlx4_slaves_pport* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 4, i1 false)
  %164 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %20, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %167 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %166, i32 0, i32 0
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  %172 = call i32 @bitmap_weight(i32 %165, i32 %171)
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %22, align 4
  br label %175

175:                                              ; preds = %146
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %142

178:                                              ; preds = %142
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %22, align 4
  %181 = add nsw i32 %179, %180
  store i32 %181, i32* %23, align 4
  %182 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %183 = load i32, i32* %23, align 4
  %184 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %182, i32 %183)
  %185 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %25, i32 0, i32 0
  store i32 %184, i32* %185, align 4
  %186 = bitcast %struct.mlx4_active_ports* %19 to i8*
  %187 = bitcast %struct.mlx4_active_ports* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 4, i1 false)
  %188 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %19, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %191 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @find_first_bit(i32 %189, i32 %193)
  %195 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %19, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %198 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @bitmap_weight(i32 %196, i32 %200)
  %202 = add nsw i32 %194, %201
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %21, align 4
  store i32 1, i32* %11, align 4
  br label %204

204:                                              ; preds = %242, %178
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %21, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %245

208:                                              ; preds = %204
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %242

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %18, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %217 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @bitmap_zero(i32 %215, i32 %219)
  %221 = load i32, i32* %11, align 4
  %222 = sub nsw i32 %221, 1
  %223 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %18, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @set_bit(i32 %222, i32 %224)
  %226 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %227 = call i32 @mlx4_phys_to_slaves_pport_actv(%struct.mlx4_dev* %226, %struct.mlx4_active_ports* %18)
  %228 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %26, i32 0, i32 0
  store i32 %227, i32* %228, align 4
  %229 = bitcast %struct.mlx4_slaves_pport* %20 to i8*
  %230 = bitcast %struct.mlx4_slaves_pport* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %229, i8* align 4 %230, i64 4, i1 false)
  %231 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %20, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %234 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %233, i32 0, i32 0
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  %239 = call i32 @bitmap_weight(i32 %232, i32 %238)
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %16, align 4
  br label %242

242:                                              ; preds = %213, %212
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %11, align 4
  br label %204

245:                                              ; preds = %204
  br label %246

246:                                              ; preds = %245, %138
  %247 = load i32, i32* %16, align 4
  %248 = load i32*, i32** %9, align 8
  store i32 %247, i32* %248, align 4
  br label %249

249:                                              ; preds = %246, %84
  %250 = load i32, i32* %12, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  br label %256

253:                                              ; preds = %249
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  br label %256

256:                                              ; preds = %253, %252
  %257 = phi i32 [ 0, %252 ], [ %255, %253 ]
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %256, %35
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mlx4_phys_to_slaves_pport_actv(%struct.mlx4_dev*, %struct.mlx4_active_ports*) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
