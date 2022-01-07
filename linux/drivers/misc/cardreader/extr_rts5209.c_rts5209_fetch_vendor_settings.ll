; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_fetch_vendor_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_fetch_vendor_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32, i32 }

@PCR_SETTING_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", align 1
@PCR_MS_PMOS = common dso_local global i32 0, align 4
@PCR_SETTING_REG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5209_fetch_vendor_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5209_fetch_vendor_settings(%struct.rtsx_pcr* %0) #0 {
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
  %12 = call i64 @rts5209_vendor_setting1_valid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @rts5209_reg_check_ms_pmos(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @PCR_MS_PMOS, align 4
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @rts5209_reg_to_aspm(i32 %25)
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = load i32, i32* @PCR_SETTING_REG2, align 4
  %32 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %30, i32 %31, i32* %3)
  %33 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %34 = load i32, i32* @PCR_SETTING_REG2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pcr_dbg(%struct.rtsx_pcr* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @rts5209_vendor_setting2_valid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @rts5209_reg_to_sd30_drive_sel_1v8(i32 %41)
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %44 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @rts5209_reg_to_sd30_drive_sel_3v3(i32 %45)
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %48 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @rts5209_reg_to_card_drive_sel(i32 %49)
  %51 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %52 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %40, %29
  ret void
}

declare dso_local i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32, i32) #1

declare dso_local i64 @rts5209_vendor_setting1_valid(i32) #1

declare dso_local i64 @rts5209_reg_check_ms_pmos(i32) #1

declare dso_local i32 @rts5209_reg_to_aspm(i32) #1

declare dso_local i64 @rts5209_vendor_setting2_valid(i32) #1

declare dso_local i32 @rts5209_reg_to_sd30_drive_sel_1v8(i32) #1

declare dso_local i32 @rts5209_reg_to_sd30_drive_sel_3v3(i32) #1

declare dso_local i32 @rts5209_reg_to_card_drive_sel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
