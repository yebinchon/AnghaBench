; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.fimc_ctx* }
%struct.fimc_ctx = type { %struct.fimc_frame }
%struct.fimc_frame = type { i64, i64, i32*, %struct.fimc_fmt* }
%struct.fimc_fmt = type { i32, i64*, i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.fimc_ctx*, align 8
  %13 = alloca %struct.fimc_frame*, align 8
  %14 = alloca %struct.fimc_fmt*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 0
  %20 = load %struct.fimc_ctx*, %struct.fimc_ctx** %19, align 8
  store %struct.fimc_ctx* %20, %struct.fimc_ctx** %12, align 8
  %21 = load %struct.fimc_ctx*, %struct.fimc_ctx** %12, align 8
  %22 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %21, i32 0, i32 0
  store %struct.fimc_frame* %22, %struct.fimc_frame** %13, align 8
  %23 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %24 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %23, i32 0, i32 3
  %25 = load %struct.fimc_fmt*, %struct.fimc_fmt** %24, align 8
  store %struct.fimc_fmt* %25, %struct.fimc_fmt** %14, align 8
  %26 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %27 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %30 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %28, %31
  store i64 %32, i64* %15, align 8
  %33 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %34 = icmp eq %struct.fimc_fmt* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %144

38:                                               ; preds = %5
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %46 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %144

52:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %15, align 8
  %66 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %67 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = mul i64 %65, %72
  %74 = udiv i64 %73, 8
  %75 = icmp ult i64 %64, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %58
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %144

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %53

83:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %144

84:                                               ; preds = %38
  %85 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %86 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %140, %84
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %92 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %143

95:                                               ; preds = %89
  %96 = load i64, i64* %15, align 8
  %97 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %98 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = mul i64 %96, %103
  %105 = udiv i64 %104, 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %17, align 4
  %107 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %108 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @fimc_fmt_is_user_defined(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %95
  %113 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %114 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %139

124:                                              ; preds = %95
  %125 = load i32, i32* @u32, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %128 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @max_t(i32 %125, i32 %126, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %124, %112
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  br label %89

143:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %83, %76, %49, %35
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i64 @fimc_fmt_is_user_defined(i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
