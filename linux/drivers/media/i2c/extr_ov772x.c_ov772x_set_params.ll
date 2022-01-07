; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov772x_priv = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i16 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ov772x_color_format = type { i32, i32, i32, i32 }
%struct.ov772x_win_size = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@HSTART = common dso_local global i32 0, align 4
@HSIZE = common dso_local global i32 0, align 4
@VSTART = common dso_local global i32 0, align 4
@VSIZE = common dso_local global i32 0, align 4
@HOUTSIZE = common dso_local global i32 0, align 4
@VOUTSIZE = common dso_local global i32 0, align 4
@HREF = common dso_local global i32 0, align 4
@HREF_VSTART_SHIFT = common dso_local global i32 0, align 4
@HREF_HSTART_SHIFT = common dso_local global i32 0, align 4
@HREF_VSIZE_SHIFT = common dso_local global i32 0, align 4
@HREF_HSIZE_SHIFT = common dso_local global i32 0, align 4
@EXHCH = common dso_local global i32 0, align 4
@EXHCH_VSIZE_SHIFT = common dso_local global i32 0, align 4
@EXHCH_HSIZE_SHIFT = common dso_local global i32 0, align 4
@DSP_CTRL3 = common dso_local global i32 0, align 4
@UV_MASK = common dso_local global i32 0, align 4
@DSP_CTRL4 = common dso_local global i32 0, align 4
@OV772X_FLAG_VFLIP = common dso_local global i32 0, align 4
@VFLIP_IMG = common dso_local global i32 0, align 4
@OV772X_FLAG_HFLIP = common dso_local global i32 0, align 4
@HFLIP_IMG = common dso_local global i32 0, align 4
@COM3 = common dso_local global i32 0, align 4
@SWAP_MASK = common dso_local global i32 0, align 4
@IMG_MASK = common dso_local global i32 0, align 4
@COM7 = common dso_local global i32 0, align 4
@COM8 = common dso_local global i32 0, align 4
@BNDF_ON_OFF = common dso_local global i32 0, align 4
@BDBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov772x_priv*, %struct.ov772x_color_format*, %struct.ov772x_win_size*)* @ov772x_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_set_params(%struct.ov772x_priv* %0, %struct.ov772x_color_format* %1, %struct.ov772x_win_size* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov772x_priv*, align 8
  %6 = alloca %struct.ov772x_color_format*, align 8
  %7 = alloca %struct.ov772x_win_size*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.ov772x_priv* %0, %struct.ov772x_priv** %5, align 8
  store %struct.ov772x_color_format* %1, %struct.ov772x_color_format** %6, align 8
  store %struct.ov772x_win_size* %2, %struct.ov772x_win_size** %7, align 8
  %11 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %12 = call i32 @ov772x_reset(%struct.ov772x_priv* %11)
  %13 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %14 = call i32 @ov772x_edgectrl(%struct.ov772x_priv* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %346

19:                                               ; preds = %3
  %20 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %21 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HSTART, align 4
  %24 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %25 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 2
  %29 = call i32 @regmap_write(i32 %22, i32 %23, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %342

33:                                               ; preds = %19
  %34 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %35 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HSIZE, align 4
  %38 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %39 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 2
  %43 = call i32 @regmap_write(i32 %36, i32 %37, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %342

47:                                               ; preds = %33
  %48 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VSTART, align 4
  %52 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %53 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 1
  %57 = call i32 @regmap_write(i32 %50, i32 %51, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %342

61:                                               ; preds = %47
  %62 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %63 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @VSIZE, align 4
  %66 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %67 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 1
  %71 = call i32 @regmap_write(i32 %64, i32 %65, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %342

75:                                               ; preds = %61
  %76 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %77 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @HOUTSIZE, align 4
  %80 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %81 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 2
  %85 = call i32 @regmap_write(i32 %78, i32 %79, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %342

89:                                               ; preds = %75
  %90 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %91 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @VOUTSIZE, align 4
  %94 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %95 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 1
  %99 = call i32 @regmap_write(i32 %92, i32 %93, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %342

103:                                              ; preds = %89
  %104 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %105 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @HREF, align 4
  %108 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %109 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 1
  %113 = load i32, i32* @HREF_VSTART_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %116 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 3
  %120 = load i32, i32* @HREF_HSTART_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = or i32 %114, %121
  %123 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %124 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 1
  %128 = load i32, i32* @HREF_VSIZE_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %122, %129
  %131 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %132 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 3
  %136 = load i32, i32* @HREF_HSIZE_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = or i32 %130, %137
  %139 = call i32 @regmap_write(i32 %106, i32 %107, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %103
  br label %342

143:                                              ; preds = %103
  %144 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %145 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @EXHCH, align 4
  %148 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %149 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 1
  %153 = load i32, i32* @EXHCH_VSIZE_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %156 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 3
  %160 = load i32, i32* @EXHCH_HSIZE_SHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = or i32 %154, %161
  %163 = call i32 @regmap_write(i32 %146, i32 %147, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %143
  br label %342

167:                                              ; preds = %143
  %168 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %6, align 8
  %169 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %175 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @DSP_CTRL3, align 4
  %178 = load i32, i32* @UV_MASK, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @regmap_update_bits(i32 %176, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %342

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %167
  %186 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %6, align 8
  %187 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %185
  %191 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %192 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @DSP_CTRL4, align 4
  %195 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %6, align 8
  %196 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @regmap_write(i32 %193, i32 %194, i32 %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %190
  br label %342

202:                                              ; preds = %190
  br label %203

203:                                              ; preds = %202, %185
  %204 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %6, align 8
  %205 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %9, align 4
  %207 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %208 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %207, i32 0, i32 5
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = icmp ne %struct.TYPE_7__* %209, null
  br i1 %210, label %211, label %224

211:                                              ; preds = %203
  %212 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %213 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %212, i32 0, i32 5
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @OV772X_FLAG_VFLIP, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %211
  %221 = load i32, i32* @VFLIP_IMG, align 4
  %222 = load i32, i32* %9, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %220, %211, %203
  %225 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %226 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %225, i32 0, i32 5
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = icmp ne %struct.TYPE_7__* %227, null
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %231 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %230, i32 0, i32 5
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @OV772X_FLAG_HFLIP, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %229
  %239 = load i32, i32* @HFLIP_IMG, align 4
  %240 = load i32, i32* %9, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %238, %229, %224
  %243 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %244 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %243, i32 0, i32 4
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %242
  %250 = load i32, i32* @VFLIP_IMG, align 4
  %251 = load i32, i32* %9, align 4
  %252 = xor i32 %251, %250
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %249, %242
  %254 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %255 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %254, i32 0, i32 3
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %253
  %261 = load i32, i32* @HFLIP_IMG, align 4
  %262 = load i32, i32* %9, align 4
  %263 = xor i32 %262, %261
  store i32 %263, i32* %9, align 4
  br label %264

264:                                              ; preds = %260, %253
  %265 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %266 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @COM3, align 4
  %269 = load i32, i32* @SWAP_MASK, align 4
  %270 = load i32, i32* @IMG_MASK, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @regmap_update_bits(i32 %267, i32 %268, i32 %271, i32 %272)
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  br label %342

277:                                              ; preds = %264
  %278 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %279 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @COM7, align 4
  %282 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %283 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %6, align 8
  %286 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %284, %287
  %289 = call i32 @regmap_write(i32 %280, i32 %281, i32 %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %277
  br label %342

293:                                              ; preds = %277
  %294 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %295 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %296 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %6, align 8
  %299 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %7, align 8
  %300 = call i32 @ov772x_set_frame_rate(%struct.ov772x_priv* %294, i32 %297, %struct.ov772x_color_format* %298, %struct.ov772x_win_size* %299)
  store i32 %300, i32* %8, align 4
  %301 = load i32, i32* %8, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %293
  br label %342

304:                                              ; preds = %293
  %305 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %306 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %305, i32 0, i32 1
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i16, i16* %308, align 2
  %310 = icmp ne i16 %309, 0
  br i1 %310, label %311, label %340

311:                                              ; preds = %304
  %312 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %313 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %312, i32 0, i32 1
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i16, i16* %315, align 2
  store i16 %316, i16* %10, align 2
  %317 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %318 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @COM8, align 4
  %321 = load i32, i32* @BNDF_ON_OFF, align 4
  %322 = load i32, i32* @BNDF_ON_OFF, align 4
  %323 = call i32 @regmap_update_bits(i32 %319, i32 %320, i32 %321, i32 %322)
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %311
  %327 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %328 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @BDBASE, align 4
  %331 = load i16, i16* %10, align 2
  %332 = zext i16 %331 to i32
  %333 = sub nsw i32 256, %332
  %334 = call i32 @regmap_update_bits(i32 %329, i32 %330, i32 255, i32 %333)
  store i32 %334, i32* %8, align 4
  br label %335

335:                                              ; preds = %326, %311
  %336 = load i32, i32* %8, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  br label %342

339:                                              ; preds = %335
  br label %340

340:                                              ; preds = %339, %304
  %341 = load i32, i32* %8, align 4
  store i32 %341, i32* %4, align 4
  br label %346

342:                                              ; preds = %338, %303, %292, %276, %201, %183, %166, %142, %102, %88, %74, %60, %46, %32
  %343 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %344 = call i32 @ov772x_reset(%struct.ov772x_priv* %343)
  %345 = load i32, i32* %8, align 4
  store i32 %345, i32* %4, align 4
  br label %346

346:                                              ; preds = %342, %340, %17
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i32 @ov772x_reset(%struct.ov772x_priv*) #1

declare dso_local i32 @ov772x_edgectrl(%struct.ov772x_priv*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ov772x_set_frame_rate(%struct.ov772x_priv*, i32, %struct.ov772x_color_format*, %struct.ov772x_win_size*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
