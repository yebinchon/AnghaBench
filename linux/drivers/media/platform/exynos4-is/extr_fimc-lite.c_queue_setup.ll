; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.fimc_lite* }
%struct.fimc_lite = type { %struct.flite_frame }
%struct.flite_frame = type { i64, i64, %struct.fimc_fmt* }
%struct.fimc_fmt = type { i32, i64* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.fimc_lite*, align 8
  %13 = alloca %struct.flite_frame*, align 8
  %14 = alloca %struct.fimc_fmt*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load %struct.fimc_lite*, %struct.fimc_lite** %18, align 8
  store %struct.fimc_lite* %19, %struct.fimc_lite** %12, align 8
  %20 = load %struct.fimc_lite*, %struct.fimc_lite** %12, align 8
  %21 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %20, i32 0, i32 0
  store %struct.flite_frame* %21, %struct.flite_frame** %13, align 8
  %22 = load %struct.flite_frame*, %struct.flite_frame** %13, align 8
  %23 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %22, i32 0, i32 2
  %24 = load %struct.fimc_fmt*, %struct.fimc_fmt** %23, align 8
  store %struct.fimc_fmt* %24, %struct.fimc_fmt** %14, align 8
  %25 = load %struct.flite_frame*, %struct.flite_frame** %13, align 8
  %26 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.flite_frame*, %struct.flite_frame** %13, align 8
  %29 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %27, %30
  store i64 %31, i64* %15, align 8
  %32 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %33 = icmp eq %struct.fimc_fmt* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %114

37:                                               ; preds = %5
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %45 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %114

51:                                               ; preds = %41
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %79, %51
  %53 = load i32, i32* %16, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %66 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = mul i64 %64, %71
  %73 = udiv i64 %72, 8
  %74 = icmp ult i64 %63, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %57
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %114

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %52

82:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %114

83:                                               ; preds = %37
  %84 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %85 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %110, %83
  %89 = load i32, i32* %16, align 4
  %90 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %91 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load i64, i64* %15, align 8
  %96 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %97 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = mul i64 %95, %102
  %104 = udiv i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %88

113:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %82, %75, %48, %34
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
