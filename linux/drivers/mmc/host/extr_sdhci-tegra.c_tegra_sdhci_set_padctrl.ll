; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_padctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_padctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { %struct.pinctrl_state*, i32, %struct.pinctrl_state*, i32, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.sdhci_tegra_autocal_offsets }
%struct.pinctrl_state = type { i32 }
%struct.sdhci_tegra_autocal_offsets = type { i32, i32, i32, i32 }

@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed pads drvupdn, ret: %d\0A\00", align 1
@SDHCI_TEGRA_SDMEM_COMP_PADCTRL = common dso_local global i32 0, align 4
@SDHCI_COMP_PADCTRL_DRVUPDN_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"setting 1.8V failed, ret: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"setting 3.3V failed, ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32, i32)* @tegra_sdhci_set_padctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_set_padctrl(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdhci_pltfm_host*, align 8
  %9 = alloca %struct.sdhci_tegra*, align 8
  %10 = alloca %struct.sdhci_tegra_autocal_offsets*, align 8
  %11 = alloca %struct.pinctrl_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %17 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %16)
  store %struct.sdhci_pltfm_host* %17, %struct.sdhci_pltfm_host** %8, align 8
  %18 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %19 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %18)
  store %struct.sdhci_tegra* %19, %struct.sdhci_tegra** %9, align 8
  %20 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %21 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %20, i32 0, i32 6
  store %struct.sdhci_tegra_autocal_offsets* %21, %struct.sdhci_tegra_autocal_offsets** %10, align 8
  store %struct.pinctrl_state* null, %struct.pinctrl_state** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %108, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %30 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %29, i32 0, i32 5
  %31 = load %struct.pinctrl_state*, %struct.pinctrl_state** %30, align 8
  %32 = icmp ne %struct.pinctrl_state* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %35 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %34, i32 0, i32 5
  %36 = load %struct.pinctrl_state*, %struct.pinctrl_state** %35, align 8
  store %struct.pinctrl_state* %36, %struct.pinctrl_state** %11, align 8
  br label %44

37:                                               ; preds = %28
  %38 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %10, align 8
  %39 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %10, align 8
  %42 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %37, %33
  br label %62

45:                                               ; preds = %24
  %46 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %47 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %46, i32 0, i32 4
  %48 = load %struct.pinctrl_state*, %struct.pinctrl_state** %47, align 8
  %49 = icmp ne %struct.pinctrl_state* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %52 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %51, i32 0, i32 4
  %53 = load %struct.pinctrl_state*, %struct.pinctrl_state** %52, align 8
  store %struct.pinctrl_state* %53, %struct.pinctrl_state** %11, align 8
  br label %61

54:                                               ; preds = %45
  %55 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %10, align 8
  %56 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %10, align 8
  %59 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %54, %50
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %64 = icmp ne %struct.pinctrl_state* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %67 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %70 = call i32 @pinctrl_select_state(i32 %68, %struct.pinctrl_state* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %75 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mmc_dev(i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %73, %65
  br label %107

81:                                               ; preds = %62
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %84, %81
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %89 = load i32, i32* @SDHCI_TEGRA_SDMEM_COMP_PADCTRL, align 4
  %90 = call i32 @sdhci_readl(%struct.sdhci_host* %88, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* @SDHCI_COMP_PADCTRL_DRVUPDN_OFFSET_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = shl i32 %95, 20
  %97 = load i32, i32* %14, align 4
  %98 = shl i32 %97, 12
  %99 = or i32 %96, %98
  %100 = load i32, i32* %15, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %15, align 4
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @SDHCI_TEGRA_SDMEM_COMP_PADCTRL, align 4
  %105 = call i32 @sdhci_writel(%struct.sdhci_host* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %87, %84
  br label %107

107:                                              ; preds = %106, %80
  br label %155

108:                                              ; preds = %3
  %109 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %110 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %157

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %114
  %119 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %120 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %123 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %122, i32 0, i32 2
  %124 = load %struct.pinctrl_state*, %struct.pinctrl_state** %123, align 8
  %125 = call i32 @pinctrl_select_state(i32 %121, %struct.pinctrl_state* %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %118
  %129 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %130 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mmc_dev(i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %128, %118
  br label %154

136:                                              ; preds = %114
  %137 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %138 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %9, align 8
  %141 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %140, i32 0, i32 0
  %142 = load %struct.pinctrl_state*, %struct.pinctrl_state** %141, align 8
  %143 = call i32 @pinctrl_select_state(i32 %139, %struct.pinctrl_state* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %136
  %147 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %148 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @mmc_dev(i32 %149)
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @dev_err(i32 %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %146, %136
  br label %154

154:                                              ; preds = %153, %135
  br label %155

155:                                              ; preds = %154, %107
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %113
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @pinctrl_select_state(i32, %struct.pinctrl_state*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
