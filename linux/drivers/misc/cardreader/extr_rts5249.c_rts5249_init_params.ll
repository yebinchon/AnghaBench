; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i64, i32*, %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EXTRA_CAPS_SD_SDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR104 = common dso_local global i32 0, align 4
@rts5249_pcr_ops = common dso_local global i32 0, align 4
@RTSX_CARD_DRIVE_DEFAULT = common dso_local global i32 0, align 4
@CFG_DRIVER_TYPE_B = common dso_local global i8* null, align 8
@ASPM_L1_EN = common dso_local global i32 0, align 4
@rts5249_sd_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5249_sd_pull_ctl_disable_tbl = common dso_local global i32 0, align 4
@rts5249_ms_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5249_ms_pull_ctl_disable_tbl = common dso_local global i32 0, align 4
@PM_CTRL3 = common dso_local global i32 0, align 4
@LTR_L1SS_PWR_GATE_CHECK_CARD_EN = common dso_local global i32 0, align 4
@LTR_L1SS_PWR_GATE_EN = common dso_local global i32 0, align 4
@LTR_ACTIVE_LATENCY_DEF = common dso_local global i32 0, align 4
@LTR_IDLE_LATENCY_DEF = common dso_local global i32 0, align 4
@LTR_L1OFF_LATENCY_DEF = common dso_local global i32 0, align 4
@DEV_ASPM_DYNAMIC = common dso_local global i32 0, align 4
@L1_SNOOZE_DELAY_DEF = common dso_local global i32 0, align 4
@LTR_L1OFF_SSPWRGATE_5249_DEF = common dso_local global i32 0, align 4
@LTR_L1OFF_SNOOZE_SSPWRGATE_5249_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rts5249_init_params(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %4 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %4, i32 0, i32 16
  store %struct.rtsx_cr_option* %5, %struct.rtsx_cr_option** %3, align 8
  %6 = load i32, i32* @EXTRA_CAPS_SD_SDR50, align 4
  %7 = load i32, i32* @EXTRA_CAPS_SD_SDR104, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %10 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %12 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %11, i32 0, i32 1
  store i32 2, i32* %12, align 4
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %14 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %13, i32 0, i32 15
  store i32* @rts5249_pcr_ops, i32** %14, align 8
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %15, i32 0, i32 14
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @RTSX_CARD_DRIVE_DEFAULT, align 4
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @CFG_DRIVER_TYPE_B, align 8
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %22 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %21, i32 0, i32 12
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @CFG_DRIVER_TYPE_B, align 8
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @ASPM_L1_EN, align 4
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = call i8* @SET_CLOCK_PHASE(i32 1, i32 29, i32 16)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %30, i32 0, i32 9
  store i8* %29, i8** %31, align 8
  %32 = call i8* @SET_CLOCK_PHASE(i32 24, i32 6, i32 5)
  %33 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %34 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %36 = call i32 @rts5249_get_ic_version(%struct.rtsx_pcr* %35)
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %38 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @rts5249_sd_pull_ctl_enable_tbl, align 4
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %41 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @rts5249_sd_pull_ctl_disable_tbl, align 4
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %44 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @rts5249_ms_pull_ctl_enable_tbl, align 4
  %46 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %47 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @rts5249_ms_pull_ctl_disable_tbl, align 4
  %49 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %50 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @PM_CTRL3, align 4
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %53 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @LTR_L1SS_PWR_GATE_CHECK_CARD_EN, align 4
  %55 = load i32, i32* @LTR_L1SS_PWR_GATE_EN, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %58 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %60 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @LTR_ACTIVE_LATENCY_DEF, align 4
  %62 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %63 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @LTR_IDLE_LATENCY_DEF, align 4
  %65 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %66 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @LTR_L1OFF_LATENCY_DEF, align 4
  %68 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %69 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @DEV_ASPM_DYNAMIC, align 4
  %71 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %72 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @L1_SNOOZE_DELAY_DEF, align 4
  %74 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %75 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @LTR_L1OFF_SSPWRGATE_5249_DEF, align 4
  %77 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %78 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @LTR_L1OFF_SNOOZE_SSPWRGATE_5249_DEF, align 4
  %80 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %81 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  ret void
}

declare dso_local i8* @SET_CLOCK_PHASE(i32, i32, i32) #1

declare dso_local i32 @rts5249_get_ic_version(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
