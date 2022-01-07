; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i64, i32, %struct.TYPE_2__*, %struct.mmc_host* }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_host = type { i64 }
%struct.mmc_ios = type { i32, i64, i64 }

@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"error setting new timing mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"error rounding clk to %d: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"setting clk to %d, rounded %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"error setting clk to %ld: %d\0A\00", align 1
@REG_CLKCR = common dso_local global i32 0, align 4
@REG_SD_NTSR = common dso_local global i32 0, align 4
@SDXC_2X_TIMING_MODE = common dso_local global i32 0, align 4
@SDXC_REG_SAMP_DL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_mmc_host*, %struct.mmc_ios*)* @sunxi_mmc_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_clk_set_rate(%struct.sunxi_mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sunxi_mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %12 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %12, i32 0, i32 3
  %14 = load %struct.mmc_host*, %struct.mmc_host** %13, align 8
  store %struct.mmc_host* %14, %struct.mmc_host** %6, align 8
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %19 = call i32 @sunxi_mmc_oclk_onoff(%struct.sunxi_mmc_host* %18, i32 0)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %3, align 4
  br label %174

24:                                               ; preds = %2
  %25 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %174

32:                                               ; preds = %24
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %40 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %45 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %38
  store i32 2, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %43, %32
  %53 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %54 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %59 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %66 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sunxi_ccu_set_mmc_timing_mode(i32 %67, i32 1)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %73 = call i32 @mmc_dev(%struct.mmc_host* %72)
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %174

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %57, %52
  %78 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %79 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @clk_round_rate(i32 %80, i32 %81)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %87 = call i32 @mmc_dev(%struct.mmc_host* %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i64, i64* %7, align 8
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 %89)
  %91 = load i64, i64* %7, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %3, align 4
  br label %174

93:                                               ; preds = %77
  %94 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %95 = call i32 @mmc_dev(%struct.mmc_host* %94)
  %96 = load i32, i32* %9, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @dev_dbg(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %96, i64 %97)
  %99 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %100 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @clk_set_rate(i32 %101, i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %93
  %107 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %108 = call i32 @mmc_dev(%struct.mmc_host* %107)
  %109 = load i64, i64* %7, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %3, align 4
  br label %174

113:                                              ; preds = %93
  %114 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %115 = load i32, i32* @REG_CLKCR, align 4
  %116 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, -256
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %124 = load i32, i32* @REG_CLKCR, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %123, i32 %124, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %7, align 8
  %130 = sdiv i64 %129, %128
  store i64 %130, i64* %7, align 8
  %131 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %132 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %113
  %136 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %137 = load i32, i32* @REG_SD_NTSR, align 4
  %138 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @SDXC_2X_TIMING_MODE, align 4
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %143 = load i32, i32* @REG_SD_NTSR, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %135, %113
  %147 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %148 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @sunxi_mmc_clk_set_phase(%struct.sunxi_mmc_host* %147, %struct.mmc_ios* %148, i64 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %3, align 4
  br label %174

155:                                              ; preds = %146
  %156 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %157 = load i32, i32* @SDXC_REG_SAMP_DL_REG, align 4
  %158 = call i32 @sunxi_mmc_calibrate(%struct.sunxi_mmc_host* %156, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %3, align 4
  br label %174

163:                                              ; preds = %155
  %164 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %165 = call i32 @sunxi_mmc_oclk_onoff(%struct.sunxi_mmc_host* %164, i32 1)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %3, align 4
  br label %174

170:                                              ; preds = %163
  %171 = load i64, i64* %7, align 8
  %172 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %173 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %168, %161, %153, %106, %85, %71, %31, %22
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @sunxi_mmc_oclk_onoff(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i32 @sunxi_ccu_set_mmc_timing_mode(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i64 @clk_round_rate(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

declare dso_local i32 @sunxi_mmc_clk_set_phase(%struct.sunxi_mmc_host*, %struct.mmc_ios*, i64) #1

declare dso_local i32 @sunxi_mmc_calibrate(%struct.sunxi_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
