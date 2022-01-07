; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_am654_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_am654_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_am654_data = type { i32, i32, i32, i32, i32, i32, i32 }

@PHY_CTRL1 = common dso_local global i32 0, align 4
@ENDLL_MASK = common dso_local global i32 0, align 4
@CLOCK_TOO_SLOW_HZ = common dso_local global i32 0, align 4
@OTAPDLYENA_MASK = common dso_local global i32 0, align 4
@OTAPDLYSEL_MASK = common dso_local global i32 0, align 4
@OTAPDLYENA_SHIFT = common dso_local global i32 0, align 4
@OTAPDLYSEL_SHIFT = common dso_local global i32 0, align 4
@PHY_CTRL4 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@STRBSEL_4_BIT = common dso_local global i32 0, align 4
@STRBSEL_4BIT_MASK = common dso_local global i32 0, align 4
@STRBSEL_8BIT_MASK = common dso_local global i32 0, align 4
@STRBSEL_SHIFT = common dso_local global i32 0, align 4
@FREQSEL_2_BIT = common dso_local global i32 0, align 4
@SEL50_MASK = common dso_local global i32 0, align 4
@SEL100_MASK = common dso_local global i32 0, align 4
@SEL50_SHIFT = common dso_local global i32 0, align 4
@SEL100_SHIFT = common dso_local global i32 0, align 4
@PHY_CTRL5 = common dso_local global i32 0, align 4
@FREQSEL_MASK = common dso_local global i32 0, align 4
@FREQSEL_SHIFT = common dso_local global i32 0, align 4
@DLL_TRIM_ICP_MASK = common dso_local global i32 0, align 4
@DLL_TRIM_ICP_SHIFT = common dso_local global i32 0, align 4
@DR_TY_MASK = common dso_local global i32 0, align 4
@DR_TY_SHIFT = common dso_local global i32 0, align 4
@ENDLL_SHIFT = common dso_local global i32 0, align 4
@PHY_STAT1 = common dso_local global i32 0, align 4
@DLLRDY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DLL failed to relock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_am654_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_am654_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_am654_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %13)
  store %struct.sdhci_pltfm_host* %14, %struct.sdhci_pltfm_host** %5, align 8
  %15 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %16 = call %struct.sdhci_am654_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %15)
  store %struct.sdhci_am654_data* %16, %struct.sdhci_am654_data** %6, align 8
  %17 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %18 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %23 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PHY_CTRL1, align 4
  %26 = load i32, i32* @ENDLL_MASK, align 4
  %27 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %2
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @sdhci_set_clock(%struct.sdhci_host* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CLOCK_TOO_SLOW_HZ, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %183

37:                                               ; preds = %30
  %38 = load i32, i32* @OTAPDLYENA_MASK, align 4
  %39 = load i32, i32* @OTAPDLYSEL_MASK, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @OTAPDLYENA_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %44 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @OTAPDLYSEL_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %42, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %50 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PHY_CTRL4, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %37
  %65 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %66 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @STRBSEL_4_BIT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @STRBSEL_4BIT_MASK, align 4
  store i32 %72, i32* %10, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @STRBSEL_8BIT_MASK, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %77 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PHY_CTRL4, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %82 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @STRBSEL_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %75, %37
  %88 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %89 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FREQSEL_2_BIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  switch i32 %95, label %98 [
    i32 200000000, label %96
    i32 100000000, label %97
  ]

96:                                               ; preds = %94
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %99

97:                                               ; preds = %94
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %99

98:                                               ; preds = %94
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %97, %96
  %100 = load i32, i32* @SEL50_MASK, align 4
  %101 = load i32, i32* @SEL100_MASK, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SEL50_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @SEL100_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %105, %108
  store i32 %109, i32* %11, align 4
  %110 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %111 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PHY_CTRL5, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @regmap_update_bits(i32 %112, i32 %113, i32 %114, i32 %115)
  br label %131

117:                                              ; preds = %87
  %118 = load i32, i32* %4, align 4
  switch i32 %118, label %120 [
    i32 200000000, label %119
  ]

119:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %121

120:                                              ; preds = %117
  store i32 4, i32* %9, align 4
  br label %121

121:                                              ; preds = %120, %119
  %122 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %123 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PHY_CTRL5, align 4
  %126 = load i32, i32* @FREQSEL_MASK, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @FREQSEL_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %121, %99
  %132 = load i32, i32* @DLL_TRIM_ICP_MASK, align 4
  store i32 %132, i32* %10, align 4
  %133 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %134 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DLL_TRIM_ICP_SHIFT, align 4
  %137 = shl i32 %135, %136
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* @DR_TY_MASK, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %142 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DR_TY_SHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %149 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @PHY_CTRL1, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @regmap_update_bits(i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %156 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @PHY_CTRL1, align 4
  %159 = load i32, i32* @ENDLL_MASK, align 4
  %160 = load i32, i32* @ENDLL_SHIFT, align 4
  %161 = shl i32 1, %160
  %162 = call i32 @regmap_update_bits(i32 %157, i32 %158, i32 %159, i32 %161)
  %163 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %164 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @PHY_STAT1, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @DLLRDY_MASK, align 4
  %170 = and i32 %168, %169
  %171 = call i32 @regmap_read_poll_timeout(i32 %165, i32 %166, i32 %167, i32 %170, i32 1000, i32 1000000)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %131
  %175 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %176 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = call i32 @mmc_dev(%struct.TYPE_4__* %177)
  %179 = call i32 @dev_err(i32 %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %183

180:                                              ; preds = %131
  %181 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %182 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %181, i32 0, i32 0
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %174, %180, %30
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_am654_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
