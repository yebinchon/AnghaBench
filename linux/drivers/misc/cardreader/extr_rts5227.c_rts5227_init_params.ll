; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i64, i32* }

@EXTRA_CAPS_SD_SDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR104 = common dso_local global i32 0, align 4
@rts5227_pcr_ops = common dso_local global i32 0, align 4
@RTSX_CARD_DRIVE_DEFAULT = common dso_local global i32 0, align 4
@CFG_DRIVER_TYPE_B = common dso_local global i8* null, align 8
@ASPM_L1_EN = common dso_local global i32 0, align 4
@rts5227_sd_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5227_sd_pull_ctl_disable_tbl = common dso_local global i32 0, align 4
@rts5227_ms_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5227_ms_pull_ctl_disable_tbl = common dso_local global i32 0, align 4
@PM_CTRL3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rts5227_init_params(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load i32, i32* @EXTRA_CAPS_SD_SDR50, align 4
  %4 = load i32, i32* @EXTRA_CAPS_SD_SDR104, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %8, i32 0, i32 1
  store i32 2, i32* %9, align 4
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 15
  store i32* @rts5227_pcr_ops, i32** %11, align 8
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %12, i32 0, i32 14
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @RTSX_CARD_DRIVE_DEFAULT, align 4
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %15, i32 0, i32 13
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** @CFG_DRIVER_TYPE_B, align 8
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 12
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @CFG_DRIVER_TYPE_B, align 8
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %22 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @ASPM_L1_EN, align 4
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 8
  %26 = call i8* @SET_CLOCK_PHASE(i32 27, i32 27, i32 15)
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = call i8* @SET_CLOCK_PHASE(i32 30, i32 7, i32 7)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %33 = call i32 @rts5227_get_ic_version(%struct.rtsx_pcr* %32)
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @rts5227_sd_pull_ctl_enable_tbl, align 4
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %38 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @rts5227_sd_pull_ctl_disable_tbl, align 4
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %41 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @rts5227_ms_pull_ctl_enable_tbl, align 4
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %44 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @rts5227_ms_pull_ctl_disable_tbl, align 4
  %46 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %47 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @PM_CTRL3, align 4
  %49 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %50 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local i8* @SET_CLOCK_PHASE(i32, i32, i32) #1

declare dso_local i32 @rts5227_get_ic_version(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
