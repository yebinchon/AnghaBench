; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { %struct.TYPE_2__*, i8** }
%struct.TYPE_2__ = type { i32 }

@MAX_FIMC_CLOCKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fimc_clocks = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*)* @fimc_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_clk_get(%struct.fimc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_FIMC_CLOCKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i8* @ERR_PTR(i32 %12)
  %14 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %15 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  store i8* %13, i8** %19, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %93, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MAX_FIMC_CLOCKS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %96

28:                                               ; preds = %24
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %30 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** @fimc_clocks, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @clk_get(i32* %32, i32 %37)
  %39 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %38, i8** %44, align 8
  %45 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %46 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %28
  %55 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %56 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %5, align 4
  br label %97

63:                                               ; preds = %28
  %64 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %65 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @clk_prepare(i8* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %63
  %75 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %76 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @clk_put(i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  %85 = call i8* @ERR_PTR(i32 %84)
  %86 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %87 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %86, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  br label %97

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %24

96:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %112

97:                                               ; preds = %74, %54
  %98 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %99 = call i32 @fimc_clk_put(%struct.fimc_dev* %98)
  %100 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %101 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** @fimc_clocks, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ENXIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %97, %96
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @clk_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @clk_put(i8*) #1

declare dso_local i32 @fimc_clk_put(%struct.fimc_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
