; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_s3c_camif_get_scaler_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_s3c_camif_get_scaler_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }
%struct.camif_scaler = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"H: ratio: %u, shift: %u. V: ratio: %u, shift: %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Source: %dx%d, Target: %dx%d, scaleup_h/v: %d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_camif_get_scaler_config(%struct.camif_vp* %0, %struct.camif_scaler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camif_vp*, align 8
  %5 = alloca %struct.camif_scaler*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %4, align 8
  store %struct.camif_scaler* %1, %struct.camif_scaler** %5, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.v4l2_rect* %15, %struct.v4l2_rect** %6, align 8
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %23 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %28 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %33 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 90
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %38 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 270
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %2
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @swap(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %49 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %48, i32 0, i32 0
  %50 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %51 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %50, i32 0, i32 1
  %52 = call i32 @camif_get_scaler_factor(i32 %46, i32 %47, i32* %49, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %142

57:                                               ; preds = %45
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %61 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %60, i32 0, i32 2
  %62 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %63 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %62, i32 0, i32 3
  %64 = call i32 @camif_get_scaler_factor(i32 %58, i32 %59, i32* %61, i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %142

69:                                               ; preds = %57
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %72 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %70, %73
  %75 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %76 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %79 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %77, %80
  %82 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %83 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %88 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %86, %89
  %91 = sdiv i32 %85, %90
  %92 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %93 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %98 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %96, %99
  %101 = sdiv i32 %95, %100
  %102 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %103 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %109 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %115 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  %116 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %117 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %116, i32 0, i32 10
  store i64 0, i64* %117, align 8
  %118 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %119 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %122 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %125 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %128 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123, i32 %126, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %136 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.camif_scaler*, %struct.camif_scaler** %5, align 8
  %139 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132, i32 %133, i32 %134, i32 %137, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %69, %67, %55
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @camif_get_scaler_factor(i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
