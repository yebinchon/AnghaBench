; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32, i32, i32, i32 }
%struct.usdhi6_host = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"%uHz, OCR: %u, power %u, bus-width %u, timing %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot reset the interface!\0A\00", align 1
@USDHI6_SD_OPTION = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"4 bits are required for DDR\0A\00", align 1
@USDHI6_SD_OPTION_WIDTH_1 = common dso_local global i32 0, align 4
@USDHI6_SDIF_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @usdhi6_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.usdhi6_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.usdhi6_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.usdhi6_host* %10, %struct.usdhi6_host** %5, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call i32 @mmc_dev(%struct.mmc_host* %11)
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %97 [
    i32 130, label %32
    i32 128, label %38
    i32 129, label %54
  ]

32:                                               ; preds = %2
  %33 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %34 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %35 = call i32 @usdhi6_set_power(%struct.usdhi6_host* %33, %struct.mmc_ios* %34)
  %36 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %37 = call i32 @usdhi6_only_cd(%struct.usdhi6_host* %36)
  br label %97

38:                                               ; preds = %2
  %39 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %40 = call i32 @usdhi6_reset(%struct.usdhi6_host* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %45 = call i32 @mmc_dev(%struct.mmc_host* %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %49 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %50 = call i32 @usdhi6_set_power(%struct.usdhi6_host* %48, %struct.mmc_ios* %49)
  %51 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %52 = call i32 @usdhi6_only_cd(%struct.usdhi6_host* %51)
  br label %53

53:                                               ; preds = %47, %43
  br label %97

54:                                               ; preds = %2
  %55 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %56 = load i32, i32* @USDHI6_SD_OPTION, align 4
  %57 = call i32 @usdhi6_read(%struct.usdhi6_host* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %54
  %64 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %71 = call i32 @mmc_dev(%struct.mmc_host* %70)
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* @USDHI6_SD_OPTION_WIDTH_1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %88

77:                                               ; preds = %54
  %78 = load i32, i32* @USDHI6_SD_OPTION_WIDTH_1, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %77, %73
  %89 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %90 = load i32, i32* @USDHI6_SD_OPTION, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @usdhi6_write(%struct.usdhi6_host* %89, i32 %90, i32 %91)
  %93 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %94 = load i32, i32* @USDHI6_SDIF_MODE, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @usdhi6_write(%struct.usdhi6_host* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %2, %88, %53, %32
  %98 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %99 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %102 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %107 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %108 = call i32 @usdhi6_clk_set(%struct.usdhi6_host* %106, %struct.mmc_ios* %107)
  br label %109

109:                                              ; preds = %105, %97
  ret void
}

declare dso_local %struct.usdhi6_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @usdhi6_set_power(%struct.usdhi6_host*, %struct.mmc_ios*) #1

declare dso_local i32 @usdhi6_only_cd(%struct.usdhi6_host*) #1

declare dso_local i32 @usdhi6_reset(%struct.usdhi6_host*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usdhi6_read(%struct.usdhi6_host*, i32) #1

declare dso_local i32 @usdhi6_write(%struct.usdhi6_host*, i32, i32) #1

declare dso_local i32 @usdhi6_clk_set(%struct.usdhi6_host*, %struct.mmc_ios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
