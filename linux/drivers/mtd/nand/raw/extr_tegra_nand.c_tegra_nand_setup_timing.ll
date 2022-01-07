; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_setup_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_setup_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_nand_controller = type { i64, i32 }
%struct.nand_sdr_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TIMING_1 = common dso_local global i64 0, align 8
@TIMING_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_nand_controller*, %struct.nand_sdr_timings*)* @tegra_nand_setup_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_nand_setup_timing(%struct.tegra_nand_controller* %0, %struct.nand_sdr_timings* %1) #0 {
  %3 = alloca %struct.tegra_nand_controller*, align 8
  %4 = alloca %struct.nand_sdr_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_nand_controller* %0, %struct.tegra_nand_controller** %3, align 8
  store %struct.nand_sdr_timings* %1, %struct.nand_sdr_timings** %4, align 8
  %9 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_get_rate(i32 %11)
  %13 = sdiv i32 %12, 1000000
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @DIV_ROUND_UP(i32 1000000, i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %17 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %16, i32 0, i32 14
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %20 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %23 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @max3(i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DIV_ROUND_UP(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @OFFSET(i32 %28, i32 3)
  %30 = call i32 @TIMING_TCR_TAR_TRR(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %34 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %37 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @max(i32 %35, i32 %38)
  %40 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %41 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %44 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @max(i32 %42, i32 %45)
  %47 = call i32 @max(i32 %39, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @OFFSET(i32 %50, i32 2)
  %52 = call i32 @TIMING_TCS(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %56 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %59 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 %57, i32 %60)
  %62 = add nsw i32 %61, 6000
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DIV_ROUND_UP(i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @OFFSET(i32 %65, i32 1)
  %67 = call i32 @TIMING_TRP(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @OFFSET(i32 %68, i32 1)
  %70 = call i32 @TIMING_TRP_RESP(i32 %69)
  %71 = or i32 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %75 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @DIV_ROUND_UP(i32 %76, i32 %77)
  %79 = call i32 @OFFSET(i32 %78, i32 1)
  %80 = call i32 @TIMING_TWB(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %84 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @DIV_ROUND_UP(i32 %85, i32 %86)
  %88 = call i32 @OFFSET(i32 %87, i32 1)
  %89 = call i32 @TIMING_TWHR(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %93 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @DIV_ROUND_UP(i32 %94, i32 %95)
  %97 = call i32 @OFFSET(i32 %96, i32 1)
  %98 = call i32 @TIMING_TWH(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %102 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @DIV_ROUND_UP(i32 %103, i32 %104)
  %106 = call i32 @OFFSET(i32 %105, i32 1)
  %107 = call i32 @TIMING_TWP(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %111 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @DIV_ROUND_UP(i32 %112, i32 %113)
  %115 = call i32 @OFFSET(i32 %114, i32 1)
  %116 = call i32 @TIMING_TRH(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %3, align 8
  %121 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TIMING_1, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel_relaxed(i32 %119, i64 %124)
  %126 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %127 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @DIV_ROUND_UP(i32 %128, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @OFFSET(i32 %131, i32 3)
  %133 = call i32 @TIMING_TADL(i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %3, align 8
  %136 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TIMING_2, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel_relaxed(i32 %134, i64 %139)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @max3(i32, i32, i32) #1

declare dso_local i32 @TIMING_TCR_TAR_TRR(i32) #1

declare dso_local i32 @OFFSET(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @TIMING_TCS(i32) #1

declare dso_local i32 @TIMING_TRP(i32) #1

declare dso_local i32 @TIMING_TRP_RESP(i32) #1

declare dso_local i32 @TIMING_TWB(i32) #1

declare dso_local i32 @TIMING_TWHR(i32) #1

declare dso_local i32 @TIMING_TWH(i32) #1

declare dso_local i32 @TIMING_TWP(i32) #1

declare dso_local i32 @TIMING_TRH(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @TIMING_TADL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
