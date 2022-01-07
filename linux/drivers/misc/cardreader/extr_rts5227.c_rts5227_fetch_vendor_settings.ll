; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_fetch_vendor_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_fetch_vendor_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32, i32 }

@PCR_SETTING_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", align 1
@PCR_SETTING_REG2 = common dso_local global i32 0, align 4
@PCR_REVERSE_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5227_fetch_vendor_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5227_fetch_vendor_settings(%struct.rtsx_pcr* %0) #0 {
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
  br label %54

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rtsx_reg_to_aspm(i32 %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @rtsx_reg_to_sd30_drive_sel_1v8(i32 %20)
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %23 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 63
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @rtsx_reg_to_card_drive_sel(i32 %28)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = load i32, i32* @PCR_SETTING_REG2, align 4
  %36 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %34, i32 %35, i32* %3)
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %38 = load i32, i32* @PCR_SETTING_REG2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @pcr_dbg(%struct.rtsx_pcr* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @rtsx_reg_to_sd30_drive_sel_3v3(i32 %41)
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %44 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @rtsx_reg_check_reverse_socket(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %15
  %49 = load i32, i32* @PCR_REVERSE_SOCKET, align 4
  %50 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %51 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %14, %48, %15
  ret void
}

declare dso_local i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32, i32) #1

declare dso_local i32 @rtsx_vendor_setting_valid(i32) #1

declare dso_local i32 @rtsx_reg_to_aspm(i32) #1

declare dso_local i32 @rtsx_reg_to_sd30_drive_sel_1v8(i32) #1

declare dso_local i32 @rtsx_reg_to_card_drive_sel(i32) #1

declare dso_local i32 @rtsx_reg_to_sd30_drive_sel_3v3(i32) #1

declare dso_local i64 @rtsx_reg_check_reverse_socket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
