; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_mlx4_assign_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_mlx4_assign_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.mlx4_eq*, i32* }
%struct.mlx4_eq = type { i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MLX4_EQ_ASYNC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MLX4_FLAG_MSI_X = common dso_local global i32 0, align 4
@MLX4_IRQNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mlx4-%d@%s\00", align 1
@mlx4_msi_x_interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_assign_eq(%struct.mlx4_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx4_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mlx4_eq*, align 8
  %14 = alloca %struct.mlx4_eq*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %16 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %15)
  store %struct.mlx4_priv* %16, %struct.mlx4_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 -1, i64* %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MLX4_CQ_TO_EQ_VECTOR(i32 %18)
  store i32 %19, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MLX4_EQ_ASYNC, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %96

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.mlx4_eq*, %struct.mlx4_eq** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %44, i64 %46
  %48 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @test_bit(i32 %40, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32* %11, i32** %12, align 8
  br label %95

54:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %60, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = call i64 @mlx4_get_eqs_per_port(%struct.mlx4_dev* %61, i32 %62)
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %71 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.mlx4_eq*, %struct.mlx4_eq** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %73, i64 %75
  store %struct.mlx4_eq* %76, %struct.mlx4_eq** %13, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %79 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %69
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.mlx4_eq*, %struct.mlx4_eq** %13, align 8
  %88 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @test_bit(i32 %86, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32* %11, i32** %12, align 8
  br label %94

94:                                               ; preds = %93, %84, %69
  br label %95

95:                                               ; preds = %94, %53
  br label %96

96:                                               ; preds = %95, %34, %31, %3
  %97 = load i32*, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %151, label %99

99:                                               ; preds = %96
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %141, %99
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %106 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = icmp slt i32 %104, %109
  br label %111

111:                                              ; preds = %103, %100
  %112 = phi i1 [ false, %100 ], [ %110, %103 ]
  br i1 %112, label %113, label %144

113:                                              ; preds = %111
  %114 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %115 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.mlx4_eq*, %struct.mlx4_eq** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %117, i64 %119
  store %struct.mlx4_eq* %120, %struct.mlx4_eq** %14, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.mlx4_eq*, %struct.mlx4_eq** %14, align 8
  %123 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %121, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %113
  %127 = load i32, i32* %5, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load %struct.mlx4_eq*, %struct.mlx4_eq** %14, align 8
  %130 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @test_bit(i32 %128, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load %struct.mlx4_eq*, %struct.mlx4_eq** %14, align 8
  %137 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %10, align 8
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %135, %126, %113
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %100

144:                                              ; preds = %111
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* @ENOSPC, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  br label %276

150:                                              ; preds = %144
  store i32* %11, i32** %12, align 8
  br label %151

151:                                              ; preds = %150, %96
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %155 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @test_bit(i32 %153, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %256, label %160

160:                                              ; preds = %151
  %161 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %162 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %256

167:                                              ; preds = %160
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %171 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @set_bit(i32 %169, i32 %173)
  %175 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %176 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MLX4_IRQNAME_SIZE, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %178, i64 %183
  %185 = load i32, i32* @MLX4_IRQNAME_SIZE, align 4
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %189 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %188, i32 0, i32 1
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = call i8* @dev_name(i32* %193)
  %195 = call i32 @snprintf(i32* %184, i32 %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %187, i8* %194)
  %196 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %197 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load %struct.mlx4_eq*, %struct.mlx4_eq** %198, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %199, i64 %202
  %204 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @mlx4_msi_x_interrupt, align 4
  %207 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %208 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 5
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %217 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load %struct.mlx4_eq*, %struct.mlx4_eq** %218, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %219, i64 %222
  %224 = call i32 @request_irq(i32 %205, i32 %206, i32 0, i32* %215, %struct.mlx4_eq* %223)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %167
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %231 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @clear_bit(i32 %229, i32 %233)
  %235 = load i32*, i32** %12, align 8
  store i32 -1, i32* %235, align 4
  br label %255

236:                                              ; preds = %167
  %237 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %238 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load %struct.mlx4_eq*, %struct.mlx4_eq** %239, align 8
  %241 = load i32*, i32** %12, align 8
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %240, i64 %243
  %245 = call i32 @eq_set_ci(%struct.mlx4_eq* %244, i32 1)
  %246 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %247 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load %struct.mlx4_eq*, %struct.mlx4_eq** %248, align 8
  %250 = load i32*, i32** %12, align 8
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %249, i64 %252
  %254 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %253, i32 0, i32 1
  store i32 1, i32* %254, align 8
  br label %255

255:                                              ; preds = %236, %227
  br label %256

256:                                              ; preds = %255, %160, %151
  %257 = load i32, i32* %8, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %275, label %259

259:                                              ; preds = %256
  %260 = load i32*, i32** %12, align 8
  %261 = load i32, i32* %260, align 4
  %262 = icmp sge i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %259
  %264 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %265 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load %struct.mlx4_eq*, %struct.mlx4_eq** %266, align 8
  %268 = load i32*, i32** %12, align 8
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %267, i64 %270
  %272 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %272, align 8
  br label %275

275:                                              ; preds = %263, %259, %256
  br label %276

276:                                              ; preds = %275, %147
  %277 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %278 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = call i32 @mutex_unlock(i32* %279)
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %292, label %283

283:                                              ; preds = %276
  %284 = load i32*, i32** %12, align 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp sge i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load i32*, i32** %12, align 8
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @MLX4_EQ_TO_CQ_VECTOR(i32 %289)
  %291 = load i32*, i32** %6, align 8
  store i32 %290, i32* %291, align 4
  br label %294

292:                                              ; preds = %283, %276
  %293 = load i32*, i32** %6, align 8
  store i32 0, i32* %293, align 4
  br label %294

294:                                              ; preds = %292, %287
  %295 = load i32, i32* %8, align 4
  ret i32 %295
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @MLX4_CQ_TO_EQ_VECTOR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @mlx4_get_eqs_per_port(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32*, %struct.mlx4_eq*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @eq_set_ci(%struct.mlx4_eq*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MLX4_EQ_TO_CQ_VECTOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
