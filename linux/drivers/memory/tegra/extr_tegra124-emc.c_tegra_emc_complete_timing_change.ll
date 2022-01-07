; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_complete_timing_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_complete_timing_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i64, %struct.emc_timing, i64 }
%struct.emc_timing = type { i64, i32, i32, i32, i32, i32 }

@EMC_AUTO_CAL_INTERVAL = common dso_local global i64 0, align 8
@EMC_CFG_PWR_MASK = common dso_local global i32 0, align 4
@EMC_CFG = common dso_local global i64 0, align 8
@EMC_ZCAL_WAIT_CNT = common dso_local global i64 0, align 8
@DRAM_TYPE_LPDDR3 = common dso_local global i64 0, align 8
@EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX = common dso_local global i32 0, align 4
@EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN = common dso_local global i32 0, align 4
@EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD = common dso_local global i32 0, align 4
@EMC_BGBIAS_CTL0 = common dso_local global i64 0, align 8
@DRAM_TYPE_DDR3 = common dso_local global i64 0, align 8
@EMC_SEL_DPD_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_emc_complete_timing_change(%struct.tegra_emc* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_emc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.emc_timing*, align 8
  %6 = alloca %struct.emc_timing*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.emc_timing* @tegra_emc_find_timing(%struct.tegra_emc* %8, i64 %9)
  store %struct.emc_timing* %10, %struct.emc_timing** %5, align 8
  %11 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %11, i32 0, i32 1
  store %struct.emc_timing* %12, %struct.emc_timing** %6, align 8
  %13 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %14 = icmp ne %struct.emc_timing* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %147

16:                                               ; preds = %2
  %17 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %18 = call i32 @emc_seq_wait_clkchange(%struct.tegra_emc* %17)
  %19 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %20 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %23 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %28 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EMC_AUTO_CAL_INTERVAL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %36

36:                                               ; preds = %26, %16
  %37 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %38 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EMC_CFG_PWR_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %45 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EMC_CFG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  br label %53

53:                                               ; preds = %43, %36
  %54 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %55 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EMC_ZCAL_WAIT_CNT, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DRAM_TYPE_LPDDR3, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %53
  %69 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %70 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %77 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %87 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @EMC_BGBIAS_CTL0, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  br label %129

92:                                               ; preds = %68, %53
  %93 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %94 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DRAM_TYPE_DDR3, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %100 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @EMC_BGBIAS_CTL0, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @readl(i64 %103)
  %105 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %106 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %98
  %110 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %111 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %114 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @EMC_BGBIAS_CTL0, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  br label %119

119:                                              ; preds = %109, %98, %92
  %120 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %121 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %124 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @EMC_AUTO_CAL_INTERVAL, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  br label %129

129:                                              ; preds = %119, %75
  %130 = call i32 @udelay(i32 2)
  %131 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %132 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %135 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @EMC_SEL_DPD_CTRL, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  %140 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %141 = call i32 @emc_seq_update_timing(%struct.tegra_emc* %140)
  %142 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %143 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %142, i32 0, i32 1
  %144 = load %struct.emc_timing*, %struct.emc_timing** %5, align 8
  %145 = bitcast %struct.emc_timing* %143 to i8*
  %146 = bitcast %struct.emc_timing* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 32, i1 false)
  br label %147

147:                                              ; preds = %129, %15
  ret void
}

declare dso_local %struct.emc_timing* @tegra_emc_find_timing(%struct.tegra_emc*, i64) #1

declare dso_local i32 @emc_seq_wait_clkchange(%struct.tegra_emc*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @emc_seq_update_timing(%struct.tegra_emc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
