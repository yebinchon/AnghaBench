; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_dfs_fft_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_dfs_fft_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_phyerr_ev_arg = type { i64 }
%struct.phyerr_fft_report = type { i32, i32 }

@ATH10K_DBG_REGULATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"wmi phyerr fft report total_gain_db %d base_pwr_db %d fft_chn_idx %d peak_sidx %d\0A\00", align 1
@SEARCH_FFT_REPORT_REG0_TOTAL_GAIN_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG0_BASE_PWR_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG0_FFT_CHN_IDX = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG0_PEAK_SIDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"wmi phyerr fft report rel_pwr_db %d avgpwr_db %d peak_mag %d num_store_bin %d\0A\00", align 1
@SEARCH_FFT_REPORT_REG1_RELPWR_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG1_AVGPWR_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG1_PEAK_MAG = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG1_NUM_STR_BINS_IB = common dso_local global i32 0, align 4
@DFS_RSSI_POSSIBLY_FALSE = common dso_local global i64 0, align 8
@DFS_PEAK_MAG_THOLD_POSSIBLY_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"dfs false pulse detected\0A\00", align 1
@pulses_discarded = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.wmi_phyerr_ev_arg*, %struct.phyerr_fft_report*, i32)* @ath10k_dfs_fft_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_dfs_fft_report(%struct.ath10k* %0, %struct.wmi_phyerr_ev_arg* %1, %struct.phyerr_fft_report* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.wmi_phyerr_ev_arg*, align 8
  %8 = alloca %struct.phyerr_fft_report*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.wmi_phyerr_ev_arg* %1, %struct.wmi_phyerr_ev_arg** %7, align 8
  store %struct.phyerr_fft_report* %2, %struct.phyerr_fft_report** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.phyerr_fft_report*, %struct.phyerr_fft_report** %8, align 8
  %15 = getelementptr inbounds %struct.phyerr_fft_report, %struct.phyerr_fft_report* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__le32_to_cpu(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.phyerr_fft_report*, %struct.phyerr_fft_report** %8, align 8
  %19 = getelementptr inbounds %struct.phyerr_fft_report, %struct.phyerr_fft_report* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__le32_to_cpu(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %7, align 8
  %23 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %26 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SEARCH_FFT_REPORT_REG0_TOTAL_GAIN_DB, align 4
  %29 = call i64 @MS(i32 %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SEARCH_FFT_REPORT_REG0_BASE_PWR_DB, align 4
  %32 = call i64 @MS(i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @SEARCH_FFT_REPORT_REG0_FFT_CHN_IDX, align 4
  %35 = call i64 @MS(i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @SEARCH_FFT_REPORT_REG0_PEAK_SIDX, align 4
  %38 = call i64 @MS(i32 %36, i32 %37)
  %39 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %25, i32 %26, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32, i64 %35, i64 %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %41 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SEARCH_FFT_REPORT_REG1_RELPWR_DB, align 4
  %44 = call i64 @MS(i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @SEARCH_FFT_REPORT_REG1_AVGPWR_DB, align 4
  %47 = call i64 @MS(i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SEARCH_FFT_REPORT_REG1_PEAK_MAG, align 4
  %50 = call i64 @MS(i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @SEARCH_FFT_REPORT_REG1_NUM_STR_BINS_IB, align 4
  %53 = call i64 @MS(i32 %51, i32 %52)
  %54 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %40, i32 %41, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %47, i64 %50, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @SEARCH_FFT_REPORT_REG1_PEAK_MAG, align 4
  %57 = call i64 @MS(i32 %55, i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @DFS_RSSI_POSSIBLY_FALSE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %4
  %62 = load i64, i64* %13, align 8
  %63 = load i32, i32* @DFS_PEAK_MAG_THOLD_POSSIBLY_FALSE, align 4
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %69 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %70 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %68, i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %72 = load i32, i32* @pulses_discarded, align 4
  %73 = call i32 @ATH10K_DFS_STAT_INC(%struct.ath10k* %71, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %61, %4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @ATH10K_DFS_STAT_INC(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
