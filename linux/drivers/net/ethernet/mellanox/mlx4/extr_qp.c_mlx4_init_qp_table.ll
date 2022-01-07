; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_init_qp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_init_qp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i64*, i32, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.mlx4_qp_table = type { i32 }
%struct.TYPE_8__ = type { %struct.mlx4_qp_table }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MLX4_QP_REGION_BOTTOM = common dso_local global i32 0, align 4
@MLX4_NUM_QP_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Number of reserved QPs is higher than number of QPs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_qp_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_qp_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %18 = call %struct.TYPE_8__* @mlx4_priv(%struct.mlx4_dev* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.mlx4_qp_table* %19, %struct.mlx4_qp_table** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 2
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i32 @INIT_RADIX_TREE(i32* %33, i32 %34)
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %397

40:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %41

61:                                               ; preds = %41
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @roundup_pow_of_two(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @ALIGN(i32 %71, i32 8)
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %77 = zext i32 %76 to i64
  %78 = call i8* @llvm.stacksave()
  store i8* %78, i8** %12, align 8
  %79 = alloca i32, i64 %77, align 16
  store i64 %77, i64* %13, align 8
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %93, %67
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %79, i64 %91
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %84

96:                                               ; preds = %84
  %97 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %150, %96
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %153

102:                                              ; preds = %98
  %103 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %146, %102
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %149

109:                                              ; preds = %105
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %79, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %113, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %79, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %124, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %120, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %109
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %79, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %79, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @swap(i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %134, %109
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %105

149:                                              ; preds = %105
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %14, align 4
  br label %98

153:                                              ; preds = %98
  %154 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %202, %153
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %205

160:                                              ; preds = %156
  %161 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %79, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %164, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %79, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  store i32 %176, i32* %186, align 4
  %187 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %188 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %79, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %190, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %160
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %156

205:                                              ; preds = %156
  %206 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %208 = call i32 @mlx4_num_reserved_sqps(%struct.mlx4_dev* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %209, %210
  %212 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %213 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %211, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %205
  %218 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %219 = call i32 @mlx4_err(%struct.mlx4_dev* %218, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %397

222:                                              ; preds = %205
  %223 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @mlx4_create_zones(%struct.mlx4_dev* %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %222
  %233 = load i32, i32* %5, align 4
  store i32 %233, i32* %2, align 4
  br label %397

234:                                              ; preds = %222
  %235 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %236 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %373

238:                                              ; preds = %234
  %239 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %240 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, 8
  %244 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %245 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  store i64 %243, i64* %246, align 8
  %247 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %248 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 8
  %252 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %253 = mul nsw i32 8, %252
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %251, %254
  %256 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %257 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  store i64 %255, i64* %258, align 8
  %259 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %260 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @GFP_KERNEL, align 4
  %264 = call %struct.TYPE_9__* @kcalloc(i32 %262, i32 32, i32 %263)
  %265 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %266 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 6
  store %struct.TYPE_9__* %264, %struct.TYPE_9__** %267, align 8
  %268 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %269 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 6
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = icmp ne %struct.TYPE_9__* %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %238
  %274 = load i32, i32* @ENOMEM, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %5, align 4
  br label %385

276:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  br label %277

277:                                              ; preds = %369, %276
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %280 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %278, %282
  br i1 %283, label %284, label %372

284:                                              ; preds = %277
  %285 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %286 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %290 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %289)
  %291 = mul nsw i32 8, %290
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %288, %292
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %293, %295
  %297 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %298 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 6
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %299, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 2
  store i64 %296, i64* %304, align 8
  %305 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %306 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 6
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %315 = mul nsw i32 8, %314
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %313, %316
  %318 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %319 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 6
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %320, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 3
  store i64 %317, i64* %325, align 8
  %326 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %327 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %331 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %330)
  %332 = mul nsw i32 8, %331
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %329, %333
  %335 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %336 = add nsw i64 %334, %335
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %336, %338
  %340 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %341 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 6
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  store i64 %339, i64* %347, align 8
  %348 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %349 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 6
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %350, align 8
  %352 = load i32, i32* %8, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %358 = mul nsw i32 8, %357
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %356, %359
  %361 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %362 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 6
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %363, align 8
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 1
  store i64 %360, i64* %368, align 8
  br label %369

369:                                              ; preds = %284
  %370 = load i32, i32* %8, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %8, align 4
  br label %277

372:                                              ; preds = %277
  br label %373

373:                                              ; preds = %372, %234
  %374 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %375 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %376 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = call i32 @mlx4_CONF_SPECIAL_QP(%struct.mlx4_dev* %374, i64 %378)
  store i32 %379, i32* %5, align 4
  %380 = load i32, i32* %5, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  br label %385

383:                                              ; preds = %373
  %384 = load i32, i32* %5, align 4
  store i32 %384, i32* %2, align 4
  br label %397

385:                                              ; preds = %382, %273
  %386 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %387 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 6
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %388, align 8
  %390 = call i32 @kfree(%struct.TYPE_9__* %389)
  %391 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %392 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 6
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %393, align 8
  %394 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %395 = call i32 @mlx4_cleanup_qp_zones(%struct.mlx4_dev* %394)
  %396 = load i32, i32* %5, align 4
  store i32 %396, i32* %2, align 4
  br label %397

397:                                              ; preds = %385, %383, %232, %217, %39
  %398 = load i32, i32* %2, align 4
  ret i32 %398
}

declare dso_local %struct.TYPE_8__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @swap(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mlx4_num_reserved_sqps(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_create_zones(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local %struct.TYPE_9__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CONF_SPECIAL_QP(%struct.mlx4_dev*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @mlx4_cleanup_qp_zones(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
