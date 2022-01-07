; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_set_scaler_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_set_scaler_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.TYPE_9__, i32, %struct.TYPE_7__*, %struct.gsc_frame, %struct.gsc_frame, %struct.gsc_scaler }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.gsc_variant* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gsc_variant = type { i32 }
%struct.gsc_frame = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"out of scaler range\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid target size: %dx%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Horizontal scale ratio is out of range\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Vertical scale ratio is out of range\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"scaler input/output size : sx = %d, sy = %d, tx = %d, ty = %d\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"scaler ratio info : pre_shfactor : %d, pre_h : %d\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"pre_v :%d, main_h : %d, main_v : %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_set_scaler_info(%struct.gsc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_ctx*, align 8
  %4 = alloca %struct.gsc_scaler*, align 8
  %5 = alloca %struct.gsc_frame*, align 8
  %6 = alloca %struct.gsc_frame*, align 8
  %7 = alloca %struct.gsc_variant*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %3, align 8
  %12 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %12, i32 0, i32 5
  store %struct.gsc_scaler* %13, %struct.gsc_scaler** %4, align 8
  %14 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %14, i32 0, i32 4
  store %struct.gsc_frame* %15, %struct.gsc_frame** %5, align 8
  %16 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %16, i32 0, i32 3
  store %struct.gsc_frame* %17, %struct.gsc_frame** %6, align 8
  %18 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.gsc_variant*, %struct.gsc_variant** %21, align 8
  store %struct.gsc_variant* %22, %struct.gsc_variant** %7, align 8
  %23 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.device* %28, %struct.device** %8, align 8
  %29 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %30 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %31 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %35 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %39 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %43 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @gsc_check_scaler_ratio(%struct.gsc_variant* %29, i32 %33, i32 %37, i32 %41, i32 %45, i32 %51, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %1
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %2, align 4
  br label %203

61:                                               ; preds = %1
  %62 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 90
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 270
  br i1 %76, label %77, label %86

77:                                               ; preds = %69, %61
  %78 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %79 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %83 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  br label %95

86:                                               ; preds = %69
  %87 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %88 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %92 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %86, %77
  %96 = load i32, i32* %9, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98, %95
  %102 = load %struct.device*, %struct.device** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %203

108:                                              ; preds = %98
  %109 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %110 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %111 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %116 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %115, i32 0, i32 3
  %117 = call i32 @gsc_cal_prescaler_ratio(%struct.gsc_variant* %109, i32 %113, i32 %114, i32* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %2, align 4
  br label %203

123:                                              ; preds = %108
  %124 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %125 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %126 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %131 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %130, i32 0, i32 2
  %132 = call i32 @gsc_cal_prescaler_ratio(%struct.gsc_variant* %124, i32 %128, i32 %129, i32* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %2, align 4
  br label %203

138:                                              ; preds = %123
  %139 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %140 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %141 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %142 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %141, i32 0, i32 3
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %146 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %145, i32 0, i32 2
  %147 = call i32 @gsc_check_src_scale_info(%struct.gsc_variant* %139, %struct.gsc_frame* %140, i32* %142, i32 %143, i32 %144, i32* %146)
  %148 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %149 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %152 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %155 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %154, i32 0, i32 4
  %156 = call i32 @gsc_get_prescaler_shfactor(i32 %150, i32 %153, i32* %155)
  %157 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %158 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  %162 = load i32, i32* %9, align 4
  %163 = sdiv i32 %161, %162
  %164 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %165 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %167 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 16
  %171 = load i32, i32* %10, align 4
  %172 = sdiv i32 %170, %171
  %173 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %174 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %176 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %180 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %187 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %190 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %188, i32 %191)
  %193 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %194 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %197 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %200 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %195, i32 %198, i32 %201)
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %138, %135, %120, %101, %58
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @gsc_check_scaler_ratio(%struct.gsc_variant*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @gsc_cal_prescaler_ratio(%struct.gsc_variant*, i32, i32, i32*) #1

declare dso_local i32 @gsc_check_src_scale_info(%struct.gsc_variant*, %struct.gsc_frame*, i32*, i32, i32, i32*) #1

declare dso_local i32 @gsc_get_prescaler_shfactor(i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
