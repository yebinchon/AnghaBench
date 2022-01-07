; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_calc_rgb_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_calc_rgb_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_deb_device = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32** }

@deb_mean_win_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"deb: %s: --- Calc pixel %dx%d, window mean %d, seek %d ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"deb: %s: RGB CALC: frame index %d, win pos %dx%d, color %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"deb: %s: RGB CALC: val %d, n %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"deb: %s: PRE CALC: %dx%d Color %d, val %d, n %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"deb: %s: FINAL CALC: %dx%d Color %d, val %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vimc_deb_device*, i32*, i32, i32, i32*)* @vimc_deb_calc_rgb_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vimc_deb_calc_rgb_sink(%struct.vimc_deb_device* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.vimc_deb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vimc_deb_device* %0, %struct.vimc_deb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %27, %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %19

30:                                               ; preds = %19
  %31 = load i32, i32* @deb_mean_win_size, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %12, align 4
  %33 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %34 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %37 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %43 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  br label %56

52:                                               ; preds = %30
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub i32 %53, %54
  br label %56

56:                                               ; preds = %52, %51
  %57 = phi i32 [ 0, %51 ], [ %55, %52 ]
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %183, %56
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %60, %61
  %63 = add i32 %62, 1
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %68 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ult i32 %66, %70
  br label %72

72:                                               ; preds = %65, %58
  %73 = phi i1 [ false, %58 ], [ %71, %65 ]
  br i1 %73, label %74, label %186

74:                                               ; preds = %72
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub i32 %80, %81
  br label %83

83:                                               ; preds = %79, %78
  %84 = phi i32 [ 0, %78 ], [ %82, %79 ]
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %179, %83
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %87, %88
  %90 = add i32 %89, 1
  %91 = icmp ult i32 %86, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %95 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ult i32 %93, %97
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi i1 [ false, %85 ], [ %98, %92 ]
  br i1 %100, label %101, label %182

101:                                              ; preds = %99
  %102 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %103 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %102, i32 0, i32 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = urem i32 %107, 2
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %106, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = urem i32 %112, 2
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %120 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %124 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @VIMC_FRAME_INDEX(i32 %117, i32 %118, i32 %122, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %128 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %131 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %129, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %16, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %17, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %149 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @vimc_deb_get_val(i32* %147, i32 %150)
  %152 = add i32 %143, %151
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %16, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* %16, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %163 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %166 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %16, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %16, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %168, i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %101
  %180 = load i32, i32* %14, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %85

182:                                              ; preds = %99
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %58

186:                                              ; preds = %72
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %248, %186
  %188 = load i32, i32* %11, align 4
  %189 = icmp ult i32 %188, 3
  br i1 %189, label %190, label %251

190:                                              ; preds = %187
  %191 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %192 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %195 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %11, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %11, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %193, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %197, i32 %198, i32 %199, i32 %200, i32 %205, i32 %209)
  %211 = load i32, i32* %11, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %190
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %11, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %11, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = udiv i32 %221, %225
  %227 = load i32*, i32** %10, align 8
  %228 = load i32, i32* %11, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  br label %231

231:                                              ; preds = %216, %190
  %232 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %233 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %236 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* %11, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %234, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %238, i32 %239, i32 %240, i32 %241, i32 %246)
  br label %248

248:                                              ; preds = %231
  %249 = load i32, i32* %11, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %11, align 4
  br label %187

251:                                              ; preds = %187
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @VIMC_FRAME_INDEX(i32, i32, i32, i32) #2

declare dso_local i32 @vimc_deb_get_val(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
