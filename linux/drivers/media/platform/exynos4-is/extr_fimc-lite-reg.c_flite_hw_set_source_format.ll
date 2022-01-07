; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_source_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_source_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.flite_frame = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@src_pixfmt_map = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unsupported pixel code, falling back to %#08x\0A\00", align 1
@FLITE_REG_CIGCTRL = common dso_local global i64 0, align 8
@FLITE_REG_CIGCTRL_FMT_MASK = common dso_local global i32 0, align 4
@FLITE_REG_CISRCSIZE = common dso_local global i64 0, align 8
@FLITE_REG_CISRCSIZE_ORDER422_MASK = common dso_local global i32 0, align 4
@FLITE_REG_CISRCSIZE_SIZE_CAM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_set_source_format(%struct.fimc_lite* %0, %struct.flite_frame* %1) #0 {
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.flite_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  store %struct.flite_frame* %1, %struct.flite_frame** %4, align 8
  %8 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %9 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32**, i32*** @src_pixfmt_map, align 8
  %14 = call i32 @ARRAY_SIZE(i32** %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %30, %2
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32**, i32*** @src_pixfmt_map, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %31

30:                                               ; preds = %19
  br label %15

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32**, i32*** @src_pixfmt_map, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %46 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32**, i32*** @src_pixfmt_map, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @v4l2_err(i32* %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %44, %34, %31
  %57 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %58 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @FLITE_REG_CIGCTRL_FMT_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32**, i32*** @src_pixfmt_map, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %78 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  %83 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %84 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FLITE_REG_CISRCSIZE, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @readl(i64 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @FLITE_REG_CISRCSIZE_ORDER422_MASK, align 4
  %90 = load i32, i32* @FLITE_REG_CISRCSIZE_SIZE_CAM_MASK, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %96 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %97, 16
  %99 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %100 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %98, %101
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32**, i32*** @src_pixfmt_map, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %116 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @FLITE_REG_CISRCSIZE, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
