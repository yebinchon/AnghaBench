; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_set_scaler_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_set_scaler_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, %struct.fimc_frame, %struct.fimc_frame, %struct.fimc_scaler, %struct.TYPE_5__* }
%struct.fimc_frame = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.fimc_scaler = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.fimc_variant* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.fimc_variant = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid target size: %dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid source size: %dx%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_set_scaler_info(%struct.fimc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca %struct.fimc_variant*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fimc_scaler*, align 8
  %7 = alloca %struct.fimc_frame*, align 8
  %8 = alloca %struct.fimc_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %3, align 8
  %14 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %14, i32 0, i32 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.fimc_variant*, %struct.fimc_variant** %17, align 8
  store %struct.fimc_variant* %18, %struct.fimc_variant** %4, align 8
  %19 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %19, i32 0, i32 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %5, align 8
  %25 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %25, i32 0, i32 3
  store %struct.fimc_scaler* %26, %struct.fimc_scaler** %6, align 8
  %27 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %27, i32 0, i32 2
  store %struct.fimc_frame* %28, %struct.fimc_frame** %7, align 8
  %29 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %29, i32 0, i32 1
  store %struct.fimc_frame* %30, %struct.fimc_frame** %8, align 8
  %31 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 90
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 270
  br i1 %39, label %40, label %47

40:                                               ; preds = %35, %1
  %41 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %42 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %45 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %49 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %52 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57, %54
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %226

67:                                               ; preds = %57
  %68 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %69 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %11, align 4
  %71 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %72 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76, %67
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %226

86:                                               ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %89 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %92 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %96 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %95, i32 0, i32 2
  %97 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %98 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %97, i32 0, i32 3
  %99 = call i32 @fimc_get_scaler_factor(i32 %93, i32 %94, i32* %96, i32* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %2, align 4
  br label %226

104:                                              ; preds = %86
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %108 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %107, i32 0, i32 4
  %109 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %110 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %109, i32 0, i32 5
  %111 = call i32 @fimc_get_scaler_factor(i32 %105, i32 %106, i32* %108, i32* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %2, align 4
  br label %226

116:                                              ; preds = %104
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %119 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %117, %120
  %122 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %123 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %126 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %124, %127
  %129 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %130 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load %struct.fimc_variant*, %struct.fimc_variant** %4, align 8
  %132 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %116
  %136 = load i32, i32* %11, align 4
  %137 = shl i32 %136, 14
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %140 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %138, %141
  %143 = sdiv i32 %137, %142
  %144 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %145 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %12, align 4
  %147 = shl i32 %146, 14
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %150 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %148, %151
  %153 = sdiv i32 %147, %152
  %154 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %155 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 4
  br label %177

156:                                              ; preds = %116
  %157 = load i32, i32* %11, align 4
  %158 = shl i32 %157, 8
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %161 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %159, %162
  %164 = sdiv i32 %158, %163
  %165 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %166 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  %168 = shl i32 %167, 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %171 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %169, %172
  %174 = sdiv i32 %168, %173
  %175 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %176 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %156, %135
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp sge i32 %178, %179
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 0
  %183 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %184 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %183, i32 0, i32 10
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp sge i32 %185, %186
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 1, i32 0
  %190 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %191 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 4
  %192 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %193 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %192, i32 0, i32 2
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %198 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %197, i32 0, i32 2
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %196, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %177
  %204 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %205 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %208 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %203
  %212 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %213 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %216 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %221 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %220, i32 0, i32 12
  store i32 1, i32* %221, align 4
  br label %225

222:                                              ; preds = %211, %203, %177
  %223 = load %struct.fimc_scaler*, %struct.fimc_scaler** %6, align 8
  %224 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %223, i32 0, i32 12
  store i32 0, i32* %224, align 4
  br label %225

225:                                              ; preds = %222, %219
  store i32 0, i32* %2, align 4
  br label %226

226:                                              ; preds = %225, %114, %102, %79, %60
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @fimc_get_scaler_factor(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
