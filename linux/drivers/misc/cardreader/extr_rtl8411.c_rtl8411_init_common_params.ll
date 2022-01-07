; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_init_common_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_init_common_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i64 }

@EXTRA_CAPS_SD_SDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR104 = common dso_local global i32 0, align 4
@RTL8411_CARD_DRIVE_DEFAULT = common dso_local global i32 0, align 4
@DRIVER_TYPE_B = common dso_local global i32 0, align 4
@DRIVER_TYPE_D = common dso_local global i32 0, align 4
@ASPM_L1_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rtl8411_init_common_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8411_init_common_params(%struct.rtsx_pcr* %0) #0 {
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
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 9
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @RTL8411_CARD_DRIVE_DEFAULT, align 4
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %14 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DRIVER_TYPE_B, align 4
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %17 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @DRIVER_TYPE_D, align 4
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ASPM_L1_EN, align 4
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %23 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = call i8* @SET_CLOCK_PHASE(i32 23, i32 7, i32 14)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = call i8* @SET_CLOCK_PHASE(i32 4, i32 3, i32 10)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %29 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = call i32 @rtl8411_get_ic_version(%struct.rtsx_pcr* %30)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local i8* @SET_CLOCK_PHASE(i32, i32, i32) #1

declare dso_local i32 @rtl8411_get_ic_version(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
