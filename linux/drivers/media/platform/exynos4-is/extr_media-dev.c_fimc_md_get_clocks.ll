; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.clk**, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.clk = type { i32 }
%struct.TYPE_4__ = type { %struct.clk* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@FIMC_MAX_CAMCLKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sclk_cam%u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get clock: %s\0A\00", align 1
@CLK_IDX_WB_A = common dso_local global i64 0, align 8
@CLK_IDX_WB_B = common dso_local global i32 0, align 4
@FIMC_MAX_WBCLKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"pxl_async%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*)* @fimc_md_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_md_get_clocks(%struct.fimc_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_md*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %3, align 8
  %9 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FIMC_MAX_CAMCLKS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  %21 = bitcast i8* %20 to %struct.clk*
  %22 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %23 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.clk* %21, %struct.clk** %28, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %13

32:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %62, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FIMC_MAX_CAMCLKS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @snprintf(i8* %38, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %43 = call %struct.clk* @clk_get(%struct.device* %41, i8* %42)
  store %struct.clk* %43, %struct.clk** %6, align 8
  %44 = load %struct.clk*, %struct.clk** %6, align 8
  %45 = call i64 @IS_ERR(%struct.clk* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.clk*, %struct.clk** %6, align 8
  %52 = call i32 @PTR_ERR(%struct.clk* %51)
  store i32 %52, i32* %8, align 4
  br label %65

53:                                               ; preds = %37
  %54 = load %struct.clk*, %struct.clk** %6, align 8
  %55 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %56 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.clk* %54, %struct.clk** %61, align 8
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %33

65:                                               ; preds = %47, %33
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %70 = call i32 @fimc_md_put_clocks(%struct.fimc_md* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %73 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %128

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i8* @ERR_PTR(i32 %79)
  %81 = bitcast i8* %80 to %struct.clk*
  %82 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %83 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %82, i32 0, i32 0
  %84 = load %struct.clk**, %struct.clk*** %83, align 8
  %85 = load i64, i64* @CLK_IDX_WB_A, align 8
  %86 = getelementptr inbounds %struct.clk*, %struct.clk** %84, i64 %85
  store %struct.clk* %81, %struct.clk** %86, align 8
  %87 = load i32, i32* @CLK_IDX_WB_B, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %117, %77
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @FIMC_MAX_WBCLKS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %88
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @snprintf(i8* %93, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %98 = call %struct.clk* @clk_get(%struct.device* %96, i8* %97)
  store %struct.clk* %98, %struct.clk** %6, align 8
  %99 = load %struct.clk*, %struct.clk** %6, align 8
  %100 = call i64 @IS_ERR(%struct.clk* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %104 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %103, i32 0, i32 1
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %106 = call i32 @v4l2_err(i32* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  %107 = load %struct.clk*, %struct.clk** %6, align 8
  %108 = call i32 @PTR_ERR(%struct.clk* %107)
  store i32 %108, i32* %8, align 4
  br label %120

109:                                              ; preds = %92
  %110 = load %struct.clk*, %struct.clk** %6, align 8
  %111 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %112 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %111, i32 0, i32 0
  %113 = load %struct.clk**, %struct.clk*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.clk*, %struct.clk** %113, i64 %115
  store %struct.clk* %110, %struct.clk** %116, align 8
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %88

120:                                              ; preds = %102, %88
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %125 = call i32 @fimc_md_put_clocks(%struct.fimc_md* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %76
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @fimc_md_put_clocks(%struct.fimc_md*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
