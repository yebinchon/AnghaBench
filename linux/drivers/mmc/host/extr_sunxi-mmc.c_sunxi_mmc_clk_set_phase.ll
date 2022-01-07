; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_clk_set_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_clk_set_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { %struct.TYPE_4__*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mmc_ios = type { i64, i64 }

@SDXC_CLK_400K = common dso_local global i32 0, align 4
@SDXC_CLK_25M = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@SDXC_CLK_50M = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@SDXC_CLK_50M_DDR_8BIT = common dso_local global i32 0, align 4
@SDXC_CLK_50M_DDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid clock... returning\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_mmc_host*, %struct.mmc_ios*, i32)* @sunxi_mmc_clk_set_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_clk_set_phase(%struct.sunxi_mmc_host* %0, %struct.mmc_ios* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sunxi_mmc_host*, align 8
  %6 = alloca %struct.mmc_ios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %5, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

14:                                               ; preds = %3
  %15 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %100

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 400000
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @SDXC_CLK_400K, align 4
  store i32 %26, i32* %8, align 4
  br label %71

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 25000000
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @SDXC_CLK_25M, align 4
  store i32 %31, i32* %8, align 4
  br label %70

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 52000000
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %43 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @SDXC_CLK_50M, align 4
  store i32 %48, i32* %8, align 4
  br label %60

49:                                               ; preds = %41, %35
  %50 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %51 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @SDXC_CLK_50M_DDR_8BIT, align 4
  store i32 %56, i32* %8, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @SDXC_CLK_50M_DDR, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %47
  br label %69

61:                                               ; preds = %32
  %62 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %63 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mmc_dev(i32 %64)
  %66 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %100

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %30
  br label %71

71:                                               ; preds = %70, %25
  %72 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %73 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %76 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clk_set_phase(i32 %74, i32 %84)
  %86 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %87 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %90 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @clk_set_phase(i32 %88, i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %71, %61, %21, %13
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
