; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { i32, i32** }

@CLK_MAX_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@camif_clocks = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_dev*)* @camif_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camif_clk_get(%struct.camif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %3, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CLK_MAX_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32* @ERR_PTR(i32 %12)
  %14 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %15 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  store i32* %13, i32** %19, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %89, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CLK_MAX_NUM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %24
  %29 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %30 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** @camif_clocks, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @clk_get(i32 %31, i32 %36)
  %38 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %39 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* %37, i32** %43, align 8
  %44 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %45 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @IS_ERR(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %28
  %54 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %55 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @PTR_ERR(i32* %60)
  store i32 %61, i32* %4, align 4
  br label %93

62:                                               ; preds = %28
  %63 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %64 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @clk_prepare(i32* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %75 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @clk_put(i32* %80)
  %82 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %83 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  store i32* null, i32** %87, align 8
  br label %93

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %24

92:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %106

93:                                               ; preds = %73, %53
  %94 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %95 = call i32 @camif_clk_put(%struct.camif_dev* %94)
  %96 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %97 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** @camif_clocks, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %93, %92
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32* @clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @camif_clk_put(%struct.camif_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
