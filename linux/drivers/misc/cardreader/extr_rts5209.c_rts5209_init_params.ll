; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i64, i32* }

@EXTRA_CAPS_SD_SDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR104 = common dso_local global i32 0, align 4
@EXTRA_CAPS_MMC_8BIT = common dso_local global i32 0, align 4
@rts5209_pcr_ops = common dso_local global i32 0, align 4
@RTS5209_CARD_DRIVE_DEFAULT = common dso_local global i32 0, align 4
@DRIVER_TYPE_B = common dso_local global i32 0, align 4
@DRIVER_TYPE_D = common dso_local global i32 0, align 4
@ASPM_L1_EN = common dso_local global i32 0, align 4
@rts5209_sd_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5209_sd_pull_ctl_disable_tbl = common dso_local global i32 0, align 4
@rts5209_ms_pull_ctl_enable_tbl = common dso_local global i32 0, align 4
@rts5209_ms_pull_ctl_disable_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rts5209_init_params(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load i32, i32* @EXTRA_CAPS_SD_SDR50, align 4
  %4 = load i32, i32* @EXTRA_CAPS_SD_SDR104, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @EXTRA_CAPS_MMC_8BIT, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %12, i32 0, i32 14
  store i32* @rts5209_pcr_ops, i32** %13, align 8
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %15 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %14, i32 0, i32 13
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @RTS5209_CARD_DRIVE_DEFAULT, align 4
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %18 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DRIVER_TYPE_B, align 4
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @DRIVER_TYPE_D, align 4
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %24 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ASPM_L1_EN, align 4
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %27 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = call i8* @SET_CLOCK_PHASE(i32 27, i32 27, i32 16)
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %30 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = call i8* @SET_CLOCK_PHASE(i32 24, i32 6, i32 5)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = call i32 @rts5209_get_ic_version(%struct.rtsx_pcr* %34)
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %37 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @rts5209_sd_pull_ctl_enable_tbl, align 4
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %40 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @rts5209_sd_pull_ctl_disable_tbl, align 4
  %42 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %43 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @rts5209_ms_pull_ctl_enable_tbl, align 4
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %46 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @rts5209_ms_pull_ctl_disable_tbl, align 4
  %48 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %49 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  ret void
}

declare dso_local i8* @SET_CLOCK_PHASE(i32, i32, i32) #1

declare dso_local i32 @rts5209_get_ic_version(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
