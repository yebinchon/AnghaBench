; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_setup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_setup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32* }

@ISS_CLK_ACLK200 = common dso_local global i64 0, align 8
@ISS_CLK_ACLK200_DIV = common dso_local global i64 0, align 8
@ISS_CLK_ACLK400MCUISP = common dso_local global i64 0, align 8
@ISS_CLK_ACLK400MCUISP_DIV = common dso_local global i64 0, align 8
@ISS_CLK_ISP_DIV0 = common dso_local global i64 0, align 8
@ACLK_AXI_FREQUENCY = common dso_local global i32 0, align 4
@ISS_CLK_ISP_DIV1 = common dso_local global i64 0, align 8
@ISS_CLK_MCUISP_DIV0 = common dso_local global i64 0, align 8
@ATCLK_MCUISP_FREQUENCY = common dso_local global i32 0, align 4
@ISS_CLK_MCUISP_DIV1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*)* @fimc_is_setup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_setup_clocks(%struct.fimc_is* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  %5 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %6 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @ISS_CLK_ACLK200, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %12 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @ISS_CLK_ACLK200_DIV, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_set_parent(i32 %10, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %24 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @ISS_CLK_ACLK400MCUISP, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %30 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @ISS_CLK_ACLK400MCUISP_DIV, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_set_parent(i32 %28, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %88

40:                                               ; preds = %22
  %41 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %42 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @ISS_CLK_ISP_DIV0, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ACLK_AXI_FREQUENCY, align 4
  %48 = call i32 @clk_set_rate(i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %88

53:                                               ; preds = %40
  %54 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %55 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @ISS_CLK_ISP_DIV1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ACLK_AXI_FREQUENCY, align 4
  %61 = call i32 @clk_set_rate(i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %88

66:                                               ; preds = %53
  %67 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %68 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @ISS_CLK_MCUISP_DIV0, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATCLK_MCUISP_FREQUENCY, align 4
  %74 = call i32 @clk_set_rate(i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %88

79:                                               ; preds = %66
  %80 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %81 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @ISS_CLK_MCUISP_DIV1, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ATCLK_MCUISP_FREQUENCY, align 4
  %87 = call i32 @clk_set_rate(i32 %85, i32 %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %79, %77, %64, %51, %38, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
