; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-gli.c_gli_set_9750.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-gli.c_gli_set_9750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_GLI_9750_DRIVING = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_PLL = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_SW_CTRL = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_MISC = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_TUNING_PARAMETERS = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_TUNING_CONTROL = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_DRIVING_1 = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_DRIVING_2 = common dso_local global i32 0, align 4
@GLI_9750_DRIVING_1_VALUE = common dso_local global i32 0, align 4
@GLI_9750_DRIVING_2_VALUE = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_SW_CTRL_4 = common dso_local global i32 0, align 4
@GLI_9750_SW_CTRL_4_VALUE = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_PLL_TX2_INV = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_PLL_TX2_DLY = common dso_local global i32 0, align 4
@GLI_9750_PLL_TX2_INV_VALUE = common dso_local global i32 0, align 4
@GLI_9750_PLL_TX2_DLY_VALUE = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_MISC_TX1_INV = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_MISC_RX_INV = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_MISC_TX1_DLY = common dso_local global i32 0, align 4
@GLI_9750_MISC_TX1_INV_VALUE = common dso_local global i32 0, align 4
@GLI_9750_MISC_RX_INV_VALUE = common dso_local global i32 0, align 4
@GLI_9750_MISC_TX1_DLY_VALUE = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY = common dso_local global i32 0, align 4
@GLI_9750_TUNING_PARAMETERS_RX_DLY_VALUE = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1 = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2 = common dso_local global i32 0, align 4
@GLI_9750_TUNING_CONTROL_GLITCH_1_VALUE = common dso_local global i32 0, align 4
@GLI_9750_TUNING_CONTROL_GLITCH_2_VALUE = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_TUNED_CLK = common dso_local global i32 0, align 4
@SDHCI_GLI_9750_TUNING_CONTROL_EN = common dso_local global i32 0, align 4
@GLI_9750_TUNING_CONTROL_EN_ON = common dso_local global i32 0, align 4
@GLI_9750_TUNING_CONTROL_EN_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @gli_set_9750 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gli_set_9750(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = call i32 @gl9750_wt_on(%struct.sdhci_host* %10)
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %13 = load i32, i32* @SDHCI_GLI_9750_DRIVING, align 4
  %14 = call i32 @sdhci_readl(%struct.sdhci_host* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %16 = load i32, i32* @SDHCI_GLI_9750_PLL, align 4
  %17 = call i32 @sdhci_readl(%struct.sdhci_host* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %19 = load i32, i32* @SDHCI_GLI_9750_SW_CTRL, align 4
  %20 = call i32 @sdhci_readl(%struct.sdhci_host* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %22 = load i32, i32* @SDHCI_GLI_9750_MISC, align 4
  %23 = call i32 @sdhci_readl(%struct.sdhci_host* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %25 = load i32, i32* @SDHCI_GLI_9750_TUNING_PARAMETERS, align 4
  %26 = call i32 @sdhci_readl(%struct.sdhci_host* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %28 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL, align 4
  %29 = call i32 @sdhci_readl(%struct.sdhci_host* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @SDHCI_GLI_9750_DRIVING_1, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @SDHCI_GLI_9750_DRIVING_2, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @SDHCI_GLI_9750_DRIVING_1, align 4
  %39 = load i32, i32* @GLI_9750_DRIVING_1_VALUE, align 4
  %40 = call i32 @FIELD_PREP(i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @SDHCI_GLI_9750_DRIVING_2, align 4
  %44 = load i32, i32* @GLI_9750_DRIVING_2_VALUE, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SDHCI_GLI_9750_DRIVING, align 4
  %51 = call i32 @sdhci_writel(%struct.sdhci_host* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @SDHCI_GLI_9750_SW_CTRL_4, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @SDHCI_GLI_9750_SW_CTRL_4, align 4
  %57 = load i32, i32* @GLI_9750_SW_CTRL_4_VALUE, align 4
  %58 = call i32 @FIELD_PREP(i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @SDHCI_GLI_9750_SW_CTRL, align 4
  %64 = call i32 @sdhci_writel(%struct.sdhci_host* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @SDHCI_GLI_9750_PLL_TX2_INV, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @SDHCI_GLI_9750_PLL_TX2_DLY, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @SDHCI_GLI_9750_PLL_TX2_INV, align 4
  %74 = load i32, i32* @GLI_9750_PLL_TX2_INV_VALUE, align 4
  %75 = call i32 @FIELD_PREP(i32 %73, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @SDHCI_GLI_9750_PLL_TX2_DLY, align 4
  %79 = load i32, i32* @GLI_9750_PLL_TX2_DLY_VALUE, align 4
  %80 = call i32 @FIELD_PREP(i32 %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @SDHCI_GLI_9750_MISC_TX1_INV, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @SDHCI_GLI_9750_MISC_RX_INV, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @SDHCI_GLI_9750_MISC_TX1_DLY, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @SDHCI_GLI_9750_MISC_TX1_INV, align 4
  %96 = load i32, i32* @GLI_9750_MISC_TX1_INV_VALUE, align 4
  %97 = call i32 @FIELD_PREP(i32 %95, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @SDHCI_GLI_9750_MISC_RX_INV, align 4
  %101 = load i32, i32* @GLI_9750_MISC_RX_INV_VALUE, align 4
  %102 = call i32 @FIELD_PREP(i32 %100, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @SDHCI_GLI_9750_MISC_TX1_DLY, align 4
  %106 = load i32, i32* @GLI_9750_MISC_TX1_DLY_VALUE, align 4
  %107 = call i32 @FIELD_PREP(i32 %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* @SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY, align 4
  %115 = load i32, i32* @GLI_9750_TUNING_PARAMETERS_RX_DLY_VALUE, align 4
  %116 = call i32 @FIELD_PREP(i32 %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1, align 4
  %128 = load i32, i32* @GLI_9750_TUNING_CONTROL_GLITCH_1_VALUE, align 4
  %129 = call i32 @FIELD_PREP(i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2, align 4
  %133 = load i32, i32* @GLI_9750_TUNING_CONTROL_GLITCH_2_VALUE, align 4
  %134 = call i32 @FIELD_PREP(i32 %132, i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @SDHCI_GLI_9750_PLL, align 4
  %140 = call i32 @sdhci_writel(%struct.sdhci_host* %137, i32 %138, i32 %139)
  %141 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @SDHCI_GLI_9750_MISC, align 4
  %144 = call i32 @sdhci_writel(%struct.sdhci_host* %141, i32 %142, i32 %143)
  %145 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %146 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %147 = call i32 @sdhci_readw(%struct.sdhci_host* %145, i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* @SDHCI_CTRL_TUNED_CLK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %155 = call i32 @sdhci_writew(%struct.sdhci_host* %152, i32 %153, i32 %154)
  %156 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_EN, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %8, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_EN, align 4
  %161 = load i32, i32* @GLI_9750_TUNING_CONTROL_EN_ON, align 4
  %162 = call i32 @FIELD_PREP(i32 %160, i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL, align 4
  %168 = call i32 @sdhci_writel(%struct.sdhci_host* %165, i32 %166, i32 %167)
  %169 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @SDHCI_GLI_9750_TUNING_PARAMETERS, align 4
  %172 = call i32 @sdhci_writel(%struct.sdhci_host* %169, i32 %170, i32 %171)
  %173 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_EN, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %8, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL_EN, align 4
  %178 = load i32, i32* @GLI_9750_TUNING_CONTROL_EN_OFF, align 4
  %179 = call i32 @FIELD_PREP(i32 %177, i32 %178)
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %8, align 4
  %182 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @SDHCI_GLI_9750_TUNING_CONTROL, align 4
  %185 = call i32 @sdhci_writel(%struct.sdhci_host* %182, i32 %183, i32 %184)
  %186 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %187 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %188 = call i32 @sdhci_readw(%struct.sdhci_host* %186, i32 %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* @SDHCI_CTRL_TUNED_CLK, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %9, align 4
  %193 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %196 = call i32 @sdhci_writew(%struct.sdhci_host* %193, i32 %194, i32 %195)
  %197 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %198 = call i32 @gl9750_wt_off(%struct.sdhci_host* %197)
  ret void
}

declare dso_local i32 @gl9750_wt_on(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @gl9750_wt_off(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
