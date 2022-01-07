; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_imr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_imr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.r820t_sect_type = type { i32, i32, i32 }

@V4L2_TUNER_DIGITAL_TV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, i32, i32)* @r820t_imr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_imr(%struct.r820t_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r820t_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r820t_sect_type, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %19 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 24000000
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %26 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2000
  store i32 %30, i32* %12, align 4
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %33 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 1000
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %31, %24
  store i32 15, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 16, %43
  %45 = mul nsw i32 %44, 8
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %45, %46
  %48 = icmp sge i32 %47, 3100000
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %13, align 4
  br label %55

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %39

55:                                               ; preds = %49, %39
  %56 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %57 = call i32 @r820t_read_cache_reg(%struct.r820t_priv* %56, i32 24)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %59 = call i32 @r820t_read_cache_reg(%struct.r820t_priv* %58, i32 25)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %61 = call i32 @r820t_read_cache_reg(%struct.r820t_priv* %60, i32 31)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %15, align 4
  %63 = and i32 %62, 240
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 16, %67
  %69 = mul nsw i32 %68, 8
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %15, align 4
  %73 = and i32 %72, 223
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = and i32 %74, 252
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = and i32 %76, 252
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %118 [
    i32 0, label %79
    i32 1, label %88
    i32 2, label %95
    i32 3, label %103
    i32 4, label %111
  ]

79:                                               ; preds = %55
  %80 = load i32, i32* %10, align 4
  %81 = sdiv i32 %80, 48
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, 32
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = or i32 %84, 3
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = or i32 %86, 2
  store i32 %87, i32* %17, align 4
  br label %125

88:                                               ; preds = %55
  %89 = load i32, i32* %10, align 4
  %90 = sdiv i32 %89, 16
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = or i32 %92, 2
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %17, align 4
  br label %125

95:                                               ; preds = %55
  %96 = load i32, i32* %10, align 4
  %97 = sdiv i32 %96, 8
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = or i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = or i32 %101, 3
  store i32 %102, i32* %17, align 4
  br label %125

103:                                              ; preds = %55
  %104 = load i32, i32* %10, align 4
  %105 = sdiv i32 %104, 6
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %15, align 4
  %107 = or i32 %106, 32
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = or i32 %109, 3
  store i32 %110, i32* %17, align 4
  br label %125

111:                                              ; preds = %55
  %112 = load i32, i32* %10, align 4
  %113 = sdiv i32 %112, 4
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = or i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %125

118:                                              ; preds = %55
  %119 = load i32, i32* %10, align 4
  %120 = sdiv i32 %119, 4
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %17, align 4
  %124 = or i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %118, %111, %103, %95, %88, %79
  %126 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @r820t_write_reg(%struct.r820t_priv* %126, i32 24, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %4, align 4
  br label %348

133:                                              ; preds = %125
  %134 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @r820t_write_reg(%struct.r820t_priv* %134, i32 25, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %4, align 4
  br label %348

141:                                              ; preds = %133
  %142 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @r820t_write_reg(%struct.r820t_priv* %142, i32 31, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %348

149:                                              ; preds = %141
  %150 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, 5300
  %153 = mul nsw i32 %152, 1000
  %154 = call i32 @r820t_set_mux(%struct.r820t_priv* %150, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %4, align 4
  br label %348

159:                                              ; preds = %149
  %160 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %161 = load i32, i32* @V4L2_TUNER_DIGITAL_TV, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 %162, 5300
  %164 = mul nsw i32 %163, 1000
  %165 = call i32 @r820t_set_pll(%struct.r820t_priv* %160, i32 %161, i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %167 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %159
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %170, %159
  %174 = load i32, i32* %9, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %4, align 4
  br label %348

178:                                              ; preds = %173
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %183 = call i32 @r820t_iq(%struct.r820t_priv* %182, %struct.r820t_sect_type* %8)
  store i32 %183, i32* %9, align 4
  br label %208

184:                                              ; preds = %178
  %185 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %186 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 3
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 2
  store i32 %190, i32* %191, align 4
  %192 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %193 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 3
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 1
  store i32 %197, i32* %198, align 4
  %199 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %200 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 3
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  %206 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %207 = call i32 @r820t_f_imr(%struct.r820t_priv* %206, %struct.r820t_sect_type* %8)
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %184, %181
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %4, align 4
  br label %348

213:                                              ; preds = %208
  %214 = load i32, i32* %6, align 4
  switch i32 %214, label %325 [
    i32 0, label %215
    i32 1, label %237
    i32 2, label %259
    i32 3, label %281
    i32 4, label %303
  ]

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %219 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %218, i32 0, i32 0
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  store i32 %217, i32* %222, align 4
  %223 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %226 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  store i32 %224, i32* %229, align 4
  %230 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %233 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %232, i32 0, i32 0
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  store i32 %231, i32* %236, align 4
  br label %347

237:                                              ; preds = %213
  %238 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %241 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %240, i32 0, i32 0
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 1
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  store i32 %239, i32* %244, align 4
  %245 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %248 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %247, i32 0, i32 0
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i64 1
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  store i32 %246, i32* %251, align 4
  %252 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %255 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %254, i32 0, i32 0
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  store i32 %253, i32* %258, align 4
  br label %347

259:                                              ; preds = %213
  %260 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %263 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %262, i32 0, i32 0
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 2
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  store i32 %261, i32* %266, align 4
  %267 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %270 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %269, i32 0, i32 0
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 2
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  store i32 %268, i32* %273, align 4
  %274 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %277 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %276, i32 0, i32 0
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 2
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  store i32 %275, i32* %280, align 4
  br label %347

281:                                              ; preds = %213
  %282 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %285 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %284, i32 0, i32 0
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i64 3
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 2
  store i32 %283, i32* %288, align 4
  %289 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %292 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %291, i32 0, i32 0
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i64 3
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  store i32 %290, i32* %295, align 4
  %296 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %299 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %298, i32 0, i32 0
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 3
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  store i32 %297, i32* %302, align 4
  br label %347

303:                                              ; preds = %213
  %304 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %307 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %306, i32 0, i32 0
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i64 4
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 2
  store i32 %305, i32* %310, align 4
  %311 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %314 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %313, i32 0, i32 0
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i64 4
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  store i32 %312, i32* %317, align 4
  %318 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %321 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %320, i32 0, i32 0
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i64 4
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  store i32 %319, i32* %324, align 4
  br label %347

325:                                              ; preds = %213
  %326 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %329 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %328, i32 0, i32 0
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i64 4
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 2
  store i32 %327, i32* %332, align 4
  %333 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %336 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %335, i32 0, i32 0
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 4
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  store i32 %334, i32* %339, align 4
  %340 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %343 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %342, i32 0, i32 0
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i64 4
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  store i32 %341, i32* %346, align 4
  br label %347

347:                                              ; preds = %325, %303, %281, %259, %237, %215
  store i32 0, i32* %4, align 4
  br label %348

348:                                              ; preds = %347, %211, %176, %157, %147, %139, %131
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @r820t_read_cache_reg(%struct.r820t_priv*, i32) #1

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

declare dso_local i32 @r820t_set_mux(%struct.r820t_priv*, i32) #1

declare dso_local i32 @r820t_set_pll(%struct.r820t_priv*, i32, i32) #1

declare dso_local i32 @r820t_iq(%struct.r820t_priv*, %struct.r820t_sect_type*) #1

declare dso_local i32 @r820t_f_imr(%struct.r820t_priv*, %struct.r820t_sect_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
