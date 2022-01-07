; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_fetch_vendor_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_fetch_vendor_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32 }

@PCR_SETTING_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", align 1
@PCR_SETTING_REG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rtl8411_fetch_vendor_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8411_fetch_vendor_settings(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = load i32, i32* @PCR_SETTING_REG1, align 4
  %7 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %5, i32 %6, i32* %3)
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = load i32, i32* @PCR_SETTING_REG1, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pcr_dbg(%struct.rtsx_pcr* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @rtsx_vendor_setting_valid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @rtsx_reg_to_aspm(i32 %17)
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @rtsx_reg_to_sd30_drive_sel_1v8(i32 %21)
  %23 = call i32 @map_sd_drive(i32 %22)
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %27 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 63
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @rtsx_reg_to_card_drive_sel(i32 %30)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %37 = load i32, i32* @PCR_SETTING_REG3, align 4
  %38 = call i32 @rtsx_pci_read_config_byte(%struct.rtsx_pcr* %36, i32 %37, i32* %4)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %40 = load i32, i32* @PCR_SETTING_REG3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pcr_dbg(%struct.rtsx_pcr* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rtl8411_reg_to_sd30_drive_sel_3v3(i32 %43)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %46 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32, i32) #1

declare dso_local i32 @rtsx_vendor_setting_valid(i32) #1

declare dso_local i32 @rtsx_reg_to_aspm(i32) #1

declare dso_local i32 @map_sd_drive(i32) #1

declare dso_local i32 @rtsx_reg_to_sd30_drive_sel_1v8(i32) #1

declare dso_local i32 @rtsx_reg_to_card_drive_sel(i32) #1

declare dso_local i32 @rtsx_pci_read_config_byte(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @rtl8411_reg_to_sd30_drive_sel_3v3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
