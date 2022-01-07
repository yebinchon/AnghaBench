; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_check_src_scale_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_check_src_scale_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_variant = type { i32 }
%struct.gsc_frame = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GSC_SC_ALIGN_4 = common dso_local global i32 0, align 4
@GSC_SC_ALIGN_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cropped src width size is recalculated from %d to %d\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"cropped src height size is recalculated from %d to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_check_src_scale_info(%struct.gsc_variant* %0, %struct.gsc_frame* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.gsc_variant*, align 8
  %8 = alloca %struct.gsc_frame*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gsc_variant* %0, %struct.gsc_variant** %7, align 8
  store %struct.gsc_frame* %1, %struct.gsc_frame** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %17 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_yuv420(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @GSC_SC_ALIGN_4, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @GSC_SC_ALIGN_4, align 4
  store i32 %25, i32* %15, align 4
  br label %41

26:                                               ; preds = %6
  %27 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %28 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_yuv422(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @GSC_SC_ALIGN_4, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @GSC_SC_ALIGN_2, align 4
  store i32 %36, i32* %15, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @GSC_SC_ALIGN_2, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @GSC_SC_ALIGN_2, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %43 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = mul nsw i32 %47, %48
  %50 = srem i32 %45, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %41
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %56 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, %54
  store i32 %59, i32* %57, align 8
  %60 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %61 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %62 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @gsc_cal_prescaler_ratio(%struct.gsc_variant* %60, i32 %64, i32 %65, i32* %66)
  %68 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %69 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %75 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %53, %41
  %80 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %81 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = srem i32 %83, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %79
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %94 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, %92
  store i32 %97, i32* %95, align 4
  %98 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %99 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %100 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @gsc_cal_prescaler_ratio(%struct.gsc_variant* %98, i32 %102, i32 %103, i32* %104)
  %106 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %107 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %113 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %91, %79
  ret void
}

declare dso_local i64 @is_yuv420(i32) #1

declare dso_local i64 @is_yuv422(i32) #1

declare dso_local i32 @gsc_cal_prescaler_ratio(%struct.gsc_variant*, i32, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
