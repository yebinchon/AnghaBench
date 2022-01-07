; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_ctrl_thld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_ctrl_thld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i64, i64, i32, i32 }
%struct.mmc_data = type { i32, i32 }

@DW_MMC_240A = common dso_local global i64 0, align 8
@DW_MMC_280A = common dso_local global i64 0, align 8
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@SDMMC_CARD_WR_THR_EN = common dso_local global i32 0, align 4
@SDMMC_CARD_RD_THR_EN = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@CDTHRCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_data*)* @dw_mci_ctrl_thld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_ctrl_thld(%struct.dw_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DW_MMC_240A, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %20 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DW_MMC_280A, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MMC_DATA_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %2
  br label %102

32:                                               ; preds = %24, %18
  %33 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_DATA_WRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %41 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %98

46:                                               ; preds = %39, %32
  %47 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MMC_DATA_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @SDMMC_CARD_WR_THR_EN, align 4
  store i32 %54, i32* %9, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @SDMMC_CARD_RD_THR_EN, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %59 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %65 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %71 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %98

76:                                               ; preds = %69, %63, %57
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %79 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 1, %80
  %82 = udiv i32 %77, %81
  store i32 %82, i32* %6, align 4
  %83 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %84 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %98

90:                                               ; preds = %76
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %8, align 4
  %92 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %93 = load i32, i32* @CDTHRCTL, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @SDMMC_SET_THLD(i32 %94, i32 %95)
  %97 = call i32 @mci_writel(%struct.dw_mci* %92, i32 %93, i32 %96)
  br label %102

98:                                               ; preds = %89, %75, %45
  %99 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %100 = load i32, i32* @CDTHRCTL, align 4
  %101 = call i32 @mci_writel(%struct.dw_mci* %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %98, %90, %31
  ret void
}

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @SDMMC_SET_THLD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
