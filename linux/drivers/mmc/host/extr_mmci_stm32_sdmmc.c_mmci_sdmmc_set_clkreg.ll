; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_mmci_sdmmc_set_clkreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_mmci_sdmmc_set_clkreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MCI_STM32_CLK_DDR = common dso_local global i32 0, align 4
@MCI_STM32_CLK_CLKDIV_MSK = common dso_local global i32 0, align 4
@MMC_POWER_ON = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@MCI_STM32_CLK_WIDEBUS_4 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@MCI_STM32_CLK_WIDEBUS_8 = common dso_local global i32 0, align 4
@MCI_STM32_CLK_HWFCEN = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i64 0, align 8
@MCI_STM32_CLK_BUSSPEED = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@MCI_STM32_CLK_SEL_MSK = common dso_local global i32 0, align 4
@MCI_STM32_CLK_SELFBCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, i32)* @mmci_sdmmc_set_clkreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_sdmmc_set_clkreg(%struct.mmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15, %2
  %25 = load i32, i32* @MCI_STM32_CLK_DDR, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %40 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %65

44:                                               ; preds = %35, %29
  %45 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %46 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = mul i32 2, %48
  %50 = call i32 @DIV_ROUND_UP(i32 %47, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MCI_STM32_CLK_CLKDIV_MSK, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @MCI_STM32_CLK_CLKDIV_MSK, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %44
  %57 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %58 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = mul i32 2, %60
  %62 = udiv i32 %59, %61
  %63 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %64 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %56, %38
  br label %76

66:                                               ; preds = %26
  %67 = load i32, i32* @MCI_STM32_CLK_CLKDIV_MSK, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %69 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = mul i32 2, %71
  %73 = udiv i32 %70, %72
  %74 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %75 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %65
  %77 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %78 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MMC_POWER_ON, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %87 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %90 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  br label %98

93:                                               ; preds = %76
  %94 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %95 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %85
  %99 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %100 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32, i32* @MCI_STM32_CLK_WIDEBUS_4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %98
  %112 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %113 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @MCI_STM32_CLK_WIDEBUS_8, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %111
  %125 = load i32, i32* @MCI_STM32_CLK_HWFCEN, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %129 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %137 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %136, i32 0, i32 3
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MMC_TIMING_UHS_SDR50, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %124
  %145 = load i32, i32* @MCI_STM32_CLK_BUSSPEED, align 4
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %149 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %148, i32 0, i32 3
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %144
  %157 = load i32, i32* @MCI_STM32_CLK_SEL_MSK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* @MCI_STM32_CLK_SELFBCK, align 4
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %156, %144
  br label %165

165:                                              ; preds = %164, %124
  %166 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @mmci_write_clkreg(%struct.mmci_host* %166, i32 %167)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mmci_write_clkreg(%struct.mmci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
