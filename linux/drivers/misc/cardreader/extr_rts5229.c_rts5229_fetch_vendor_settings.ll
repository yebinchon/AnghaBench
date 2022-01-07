; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5229.c_rts5229_fetch_vendor_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5229.c_rts5229_fetch_vendor_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i8*, i8*, i32 }

@PCR_SETTING_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", align 1
@PCR_SETTING_REG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5229_fetch_vendor_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5229_fetch_vendor_settings(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %4 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %5 = load i32, i32* @PCR_SETTING_REG1, align 4
  %6 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %4, i32 %5, i32* %3)
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %8 = load i32, i32* @PCR_SETTING_REG1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pcr_dbg(%struct.rtsx_pcr* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @rtsx_vendor_setting_valid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rtsx_reg_to_aspm(i32 %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @rtsx_reg_to_sd30_drive_sel_1v8(i32 %20)
  %22 = call i8* @map_sd_drive(i32 %21)
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %24 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 63
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @rtsx_reg_to_card_drive_sel(i32 %29)
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %32 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %36 = load i32, i32* @PCR_SETTING_REG2, align 4
  %37 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %35, i32 %36, i32* %3)
  %38 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %39 = load i32, i32* @PCR_SETTING_REG2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @pcr_dbg(%struct.rtsx_pcr* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @rtsx_reg_to_sd30_drive_sel_3v3(i32 %42)
  %44 = call i8* @map_sd_drive(i32 %43)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %46 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32, i32) #1

declare dso_local i32 @rtsx_vendor_setting_valid(i32) #1

declare dso_local i32 @rtsx_reg_to_aspm(i32) #1

declare dso_local i8* @map_sd_drive(i32) #1

declare dso_local i32 @rtsx_reg_to_sd30_drive_sel_1v8(i32) #1

declare dso_local i32 @rtsx_reg_to_card_drive_sel(i32) #1

declare dso_local i32 @rtsx_reg_to_sd30_drive_sel_3v3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
