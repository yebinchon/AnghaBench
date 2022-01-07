; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_aptina-pll.c_aptina_pll_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_aptina-pll.c_aptina_pll_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aptina_pll_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aptina_pll = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"PLL: ext clock %u pix clock %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"pll: invalid external clock frequency.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"pll: invalid pixel clock frequency.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pll: mf min %u max %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"pll: no valid combined N*P1 divisor.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"pll: P1 minimum value must be >0.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"PLL: N %u M %u P1 %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"pll: no valid N and P1 divisors found.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aptina_pll_calculate(%struct.device* %0, %struct.aptina_pll_limits* %1, %struct.aptina_pll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.aptina_pll_limits*, align 8
  %7 = alloca %struct.aptina_pll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.aptina_pll_limits* %1, %struct.aptina_pll_limits** %6, align 8
  store %struct.aptina_pll* %2, %struct.aptina_pll** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %19 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %22 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %26 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %29 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %3
  %33 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %34 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %37 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ugt i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32, %3
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %289

45:                                               ; preds = %32
  %46 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %47 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %52 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %55 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50, %45
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %289

63:                                               ; preds = %50
  %64 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %65 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %68 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @gcd(i32 %66, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %72 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = udiv i32 %73, %74
  %76 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %77 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %79 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = udiv i32 %80, %81
  store i32 %82, i32* %13, align 4
  %83 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %84 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %87 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DIV_ROUND_UP(i32 %85, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %92 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %95 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %98 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = udiv i32 %96, %99
  %101 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %102 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = mul i32 %100, %103
  %105 = udiv i32 %93, %104
  %106 = call i32 @max(i32 %90, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %109 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %112 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = mul i32 %110, %113
  %115 = load i32, i32* %13, align 4
  %116 = udiv i32 %114, %115
  %117 = call i32 @max(i32 %107, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %119 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %122 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = udiv i32 %120, %123
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %127 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %130 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %133 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = udiv i32 %131, %134
  %136 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %137 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = mul i32 %135, %138
  %140 = udiv i32 %128, %139
  %141 = call i32 @min(i32 %125, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %144 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %147 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = mul i32 %145, %148
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @DIV_ROUND_UP(i32 %149, i32 %150)
  %152 = call i32 @min(i32 %142, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ugt i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %63
  %161 = load %struct.device*, %struct.device** %5, align 8
  %162 = call i32 @dev_err(%struct.device* %161, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %289

165:                                              ; preds = %63
  %166 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %167 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.device*, %struct.device** %5, align 8
  %172 = call i32 @dev_err(%struct.device* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %289

175:                                              ; preds = %165
  %176 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %177 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %180 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %13, align 4
  %183 = mul i32 %181, %182
  %184 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %185 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %188 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = mul i32 %186, %189
  %191 = call i32 @DIV_ROUND_UP(i32 %183, i32 %190)
  %192 = call i32 @max(i32 %178, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %194 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %193, i32 0, i32 10
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %197 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %13, align 4
  %200 = mul i32 %198, %199
  %201 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %202 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %205 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = mul i32 %203, %206
  %208 = udiv i32 %200, %207
  %209 = call i32 @min(i32 %195, i32 %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = and i32 %210, -2
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %281, %175
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp uge i32 %213, %214
  br i1 %215, label %216, label %284

216:                                              ; preds = %212
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @gcd(i32 %218, i32 %219)
  %221 = udiv i32 %217, %220
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %224 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %12, align 4
  %227 = mul i32 %225, %226
  %228 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %229 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %13, align 4
  %232 = mul i32 %230, %231
  %233 = call i32 @DIV_ROUND_UP(i32 %227, i32 %232)
  %234 = call i32 @max(i32 %222, i32 %233)
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @roundup(i32 %234, i32 %235)
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %239 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %12, align 4
  %242 = mul i32 %240, %241
  %243 = load %struct.aptina_pll_limits*, %struct.aptina_pll_limits** %6, align 8
  %244 = getelementptr inbounds %struct.aptina_pll_limits, %struct.aptina_pll_limits* %243, i32 0, i32 12
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %13, align 4
  %247 = mul i32 %245, %246
  %248 = udiv i32 %242, %247
  %249 = call i32 @min(i32 %237, i32 %248)
  store i32 %249, i32* %15, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp ugt i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %216
  br label %281

254:                                              ; preds = %216
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %16, align 4
  %257 = mul i32 %255, %256
  %258 = load i32, i32* %12, align 4
  %259 = udiv i32 %257, %258
  %260 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %261 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %264 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = mul i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %269 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 4
  %270 = load %struct.device*, %struct.device** %5, align 8
  %271 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %272 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %275 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.aptina_pll*, %struct.aptina_pll** %7, align 8
  %278 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %270, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %273, i32 %276, i32 %279)
  store i32 0, i32* %4, align 4
  br label %289

281:                                              ; preds = %253
  %282 = load i32, i32* %12, align 4
  %283 = sub i32 %282, 2
  store i32 %283, i32* %12, align 4
  br label %212

284:                                              ; preds = %212
  %285 = load %struct.device*, %struct.device** %5, align 8
  %286 = call i32 @dev_err(%struct.device* %285, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %287 = load i32, i32* @EINVAL, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %284, %254, %170, %160, %58, %40
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
