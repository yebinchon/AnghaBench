; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_hs400_tune_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_hs400_tune_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.msdc_host = type { i32, i32, i64, i64 }
%struct.msdc_delay_phase = type { i32, i32 }

@PAD_CMD_TUNE = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@MSDC_PAD_TUNE = common dso_local global i64 0, align 8
@MSDC_PAD_TUNE_CMDRRDLY = common dso_local global i32 0, align 4
@MSDC_IOCON = common dso_local global i64 0, align 8
@MSDC_IOCON_RSPL = common dso_local global i32 0, align 4
@PAD_DELAY_MAX = common dso_local global i32 0, align 4
@PAD_CMD_TUNE_RX_DLY3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Final cmd pad delay: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @hs400_tune_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hs400_tune_response(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msdc_delay_phase, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.msdc_delay_phase, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %13)
  store %struct.msdc_host* %14, %struct.msdc_host** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = bitcast %struct.msdc_delay_phase* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %17 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAD_CMD_TUNE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @BIT(i32 0)
  %22 = call i32 @sdr_set_bits(i64 %20, i32 %21)
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29, %2
  %37 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %38 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MSDC_PAD_TUNE, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @MSDC_PAD_TUNE_CMDRRDLY, align 4
  %43 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %44 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sdr_set_field(i64 %41, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %36, %29
  %48 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %49 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %54 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MSDC_IOCON, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %59 = call i32 @sdr_clr_bits(i64 %57, i32 %58)
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %62 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MSDC_IOCON, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %67 = call i32 @sdr_set_bits(i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %52
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %107, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @PAD_DELAY_MAX, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %69
  %74 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %75 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PAD_CMD_TUNE, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* @PAD_CMD_TUNE_RX_DLY3, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @sdr_set_field(i64 %78, i32 %79, i32 %80)
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %103, %73
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @mmc_send_tuning(%struct.mmc_host* %86, i32 %87, i32* %9)
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = shl i32 1, %92
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %102

96:                                               ; preds = %85
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 1, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %106

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %82

106:                                              ; preds = %96, %82
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %69

110:                                              ; preds = %69
  %111 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i64 @get_best_delay(%struct.msdc_host* %111, i32 %112)
  %114 = bitcast %struct.msdc_delay_phase* %12 to i64*
  store i64 %113, i64* %114, align 4
  %115 = bitcast %struct.msdc_delay_phase* %7 to i8*
  %116 = bitcast %struct.msdc_delay_phase* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 8, i1 false)
  %117 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %118 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PAD_CMD_TUNE, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i32, i32* @PAD_CMD_TUNE_RX_DLY3, align 4
  %123 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %7, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @sdr_set_field(i64 %121, i32 %122, i32 %124)
  %126 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %7, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %8, align 4
  %128 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %129 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @dev_dbg(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = icmp eq i32 %133, 255
  br i1 %134, label %135, label %138

135:                                              ; preds = %110
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  br label %139

138:                                              ; preds = %110
  br label %139

139:                                              ; preds = %138, %135
  %140 = phi i32 [ %137, %135 ], [ 0, %138 ]
  ret i32 %140
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sdr_set_bits(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sdr_set_field(i64, i32, i32) #1

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i64 @get_best_delay(%struct.msdc_host*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
