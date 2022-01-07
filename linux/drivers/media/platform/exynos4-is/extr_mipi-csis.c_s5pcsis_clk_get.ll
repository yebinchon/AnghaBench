; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csis_state = type { i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@NUM_CSIS_CLOCKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@csi_clock_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csis_state*)* @s5pcsis_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcsis_clk_get(%struct.csis_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csis_state*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csis_state* %0, %struct.csis_state** %3, align 8
  %7 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %8 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NUM_CSIS_CLOCKS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i8* @ERR_PTR(i32 %17)
  %19 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %20 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %18, i8** %24, align 8
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %95, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NUM_CSIS_CLOCKS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %98

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32*, i32** @csi_clock_name, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @clk_get(%struct.device* %34, i32 %39)
  %41 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %42 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  %47 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %48 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %33
  %57 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %58 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %6, align 4
  br label %99

65:                                               ; preds = %33
  %66 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %67 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @clk_prepare(i8* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %65
  %77 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %78 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @clk_put(i8* %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i8* @ERR_PTR(i32 %86)
  %88 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %89 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %87, i8** %93, align 8
  br label %99

94:                                               ; preds = %65
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %29

98:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %110

99:                                               ; preds = %76, %56
  %100 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %101 = call i32 @s5pcsis_clk_put(%struct.csis_state* %100)
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load i32*, i32** @csi_clock_name, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %99, %98
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @clk_put(i8*) #1

declare dso_local i32 @s5pcsis_clk_put(%struct.csis_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
