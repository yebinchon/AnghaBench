; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i64, %struct.rtsx_hw_param, %struct.rtsx_cr_option }
%struct.rtsx_hw_param = type { i32, i32 }
%struct.rtsx_cr_option = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EXTRA_CAPS_SD_SDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR104 = common dso_local global i32 0, align 4
@RTSX_CARD_DRIVE_DEFAULT = common dso_local global i32 0, align 4
@CFG_DRIVER_TYPE_B = common dso_local global i8* null, align 8
@ASPM_L1_EN = common dso_local global i32 0, align 4
@rts5260_sd_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5260_sd_pull_ctl_disable_tbl = common dso_local global i32 0, align 4
@rts5260_ms_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5260_ms_pull_ctl_disable_tbl = common dso_local global i32 0, align 4
@RTS524A_PM_CTRL3 = common dso_local global i32 0, align 4
@rts5260_pcr_ops = common dso_local global i32 0, align 4
@LTR_L1SS_PWR_GATE_CHECK_CARD_EN = common dso_local global i32 0, align 4
@LTR_L1SS_PWR_GATE_EN = common dso_local global i32 0, align 4
@LTR_ACTIVE_LATENCY_DEF = common dso_local global i32 0, align 4
@LTR_IDLE_LATENCY_DEF = common dso_local global i32 0, align 4
@LTR_L1OFF_LATENCY_DEF = common dso_local global i32 0, align 4
@DEV_ASPM_DYNAMIC = common dso_local global i32 0, align 4
@L1_SNOOZE_DELAY_DEF = common dso_local global i32 0, align 4
@LTR_L1OFF_SSPWRGATE_5250_DEF = common dso_local global i32 0, align 4
@LTR_L1OFF_SNOOZE_SSPWRGATE_5250_DEF = common dso_local global i32 0, align 4
@SD_OC_INT_EN = common dso_local global i32 0, align 4
@SD_OCP_GLITCH_100U = common dso_local global i32 0, align 4
@SDVIO_OCP_GLITCH_800U = common dso_local global i32 0, align 4
@RTS5260_DVCC_OCP_THD_550 = common dso_local global i32 0, align 4
@RTS5260_DVCC_OCP_THD_970 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rts5260_init_params(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  %4 = alloca %struct.rtsx_hw_param*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %5, i32 0, i32 17
  store %struct.rtsx_cr_option* %6, %struct.rtsx_cr_option** %3, align 8
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %8 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %7, i32 0, i32 16
  store %struct.rtsx_hw_param* %8, %struct.rtsx_hw_param** %4, align 8
  %9 = load i32, i32* @EXTRA_CAPS_SD_SDR50, align 4
  %10 = load i32, i32* @EXTRA_CAPS_SD_SDR104, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %15 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %14, i32 0, i32 1
  store i32 2, i32* %15, align 4
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %17 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %16, i32 0, i32 15
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @RTSX_CARD_DRIVE_DEFAULT, align 4
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %19, i32 0, i32 14
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @CFG_DRIVER_TYPE_B, align 8
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %23 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %22, i32 0, i32 13
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @CFG_DRIVER_TYPE_B, align 8
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %25, i32 0, i32 12
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @ASPM_L1_EN, align 4
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %29 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = call i8* @SET_CLOCK_PHASE(i32 1, i32 29, i32 16)
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %32 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = call i8* @SET_CLOCK_PHASE(i32 24, i32 6, i32 5)
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %37 = call i32 @rts5260_get_ic_version(%struct.rtsx_pcr* %36)
  %38 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %39 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @rts5260_sd_pull_ctl_enable_tbl, align 4
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %42 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @rts5260_sd_pull_ctl_disable_tbl, align 4
  %44 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %45 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @rts5260_ms_pull_ctl_enable_tbl, align 4
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %48 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @rts5260_ms_pull_ctl_disable_tbl, align 4
  %50 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %51 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @RTS524A_PM_CTRL3, align 4
  %53 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %54 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %56 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %55, i32 0, i32 2
  store i32* @rts5260_pcr_ops, i32** %56, align 8
  %57 = load i32, i32* @LTR_L1SS_PWR_GATE_CHECK_CARD_EN, align 4
  %58 = load i32, i32* @LTR_L1SS_PWR_GATE_EN, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %61 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %63 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @LTR_ACTIVE_LATENCY_DEF, align 4
  %65 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %66 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @LTR_IDLE_LATENCY_DEF, align 4
  %68 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %69 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @LTR_L1OFF_LATENCY_DEF, align 4
  %71 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %72 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @DEV_ASPM_DYNAMIC, align 4
  %74 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %75 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @L1_SNOOZE_DELAY_DEF, align 4
  %77 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %78 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @LTR_L1OFF_SSPWRGATE_5250_DEF, align 4
  %80 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %81 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @LTR_L1OFF_SNOOZE_SSPWRGATE_5250_DEF, align 4
  %83 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %84 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %86 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  %87 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %88 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %1
  %92 = load i32, i32* @SD_OC_INT_EN, align 4
  %93 = load %struct.rtsx_hw_param*, %struct.rtsx_hw_param** %4, align 8
  %94 = getelementptr inbounds %struct.rtsx_hw_param, %struct.rtsx_hw_param* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %1
  %98 = load i32, i32* @SD_OCP_GLITCH_100U, align 4
  %99 = load i32, i32* @SDVIO_OCP_GLITCH_800U, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.rtsx_hw_param*, %struct.rtsx_hw_param** %4, align 8
  %102 = getelementptr inbounds %struct.rtsx_hw_param, %struct.rtsx_hw_param* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @RTS5260_DVCC_OCP_THD_550, align 4
  %104 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %105 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @RTS5260_DVCC_OCP_THD_970, align 4
  %107 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %108 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  ret void
}

declare dso_local i8* @SET_CLOCK_PHASE(i32, i32, i32) #1

declare dso_local i32 @rts5260_get_ic_version(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
