; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_sdhci_st_set_uhs_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_sdhci_st_set_uhs_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.st_mmc_platform_data = type { i32 }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_MASK = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR12 = common dso_local global i32 0, align 4
@SDHCI_CTRL_VDD_180 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR25 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR50 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_DDR50 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error setting dll for clock (uhs %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"uhs %d, ctrl_2 %04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_st_set_uhs_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_st_set_uhs_signaling(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.st_mmc_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %5, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %12 = call %struct.st_mmc_platform_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.st_mmc_platform_data* %12, %struct.st_mmc_platform_data** %6, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %15 = call i32 @sdhci_readw(%struct.sdhci_host* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @SDHCI_CTRL_UHS_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %75 [
    i32 130, label %21
    i32 129, label %31
    i32 128, label %41
    i32 131, label %53
    i32 133, label %53
    i32 132, label %65
    i32 134, label %65
  ]

21:                                               ; preds = %2
  %22 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %23 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @st_mmcss_set_static_delay(i32 %24)
  %26 = load i32, i32* @SDHCI_CTRL_UHS_SDR12, align 4
  %27 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %75

31:                                               ; preds = %2
  %32 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %33 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @st_mmcss_set_static_delay(i32 %34)
  %36 = load i32, i32* @SDHCI_CTRL_UHS_SDR25, align 4
  %37 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %75

41:                                               ; preds = %2
  %42 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @st_mmcss_set_static_delay(i32 %44)
  %46 = load i32, i32* @SDHCI_CTRL_UHS_SDR50, align 4
  %47 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = call i32 @sdhci_st_set_dll_for_clock(%struct.sdhci_host* %51)
  store i32 %52, i32* %8, align 4
  br label %75

53:                                               ; preds = %2, %2
  %54 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %55 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @st_mmcss_set_static_delay(i32 %56)
  %58 = load i32, i32* @SDHCI_CTRL_UHS_SDR104, align 4
  %59 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %64 = call i32 @sdhci_st_set_dll_for_clock(%struct.sdhci_host* %63)
  store i32 %64, i32* %8, align 4
  br label %75

65:                                               ; preds = %2, %2
  %66 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %6, align 8
  %67 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @st_mmcss_set_static_delay(i32 %68)
  %70 = load i32, i32* @SDHCI_CTRL_UHS_DDR50, align 4
  %71 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %2, %65, %53, %41, %31, %21
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %80 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @mmc_dev(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @dev_warn(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %75
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %87 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mmc_dev(i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %96 = call i32 @sdhci_writew(%struct.sdhci_host* %93, i32 %94, i32 %95)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.st_mmc_platform_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @st_mmcss_set_static_delay(i32) #1

declare dso_local i32 @sdhci_st_set_dll_for_clock(%struct.sdhci_host*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
