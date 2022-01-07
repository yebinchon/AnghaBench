; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_switch_output_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_switch_output_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@PHY_TUNE = common dso_local global i32 0, align 4
@PHY_TUNE_VOLTAGE_MASK = common dso_local global i32 0, align 4
@PHY_TUNE_VOLTAGE_3V3 = common dso_local global i32 0, align 4
@PHY_TUNE_D18_1V8 = common dso_local global i32 0, align 4
@PHY_BACR = common dso_local global i32 0, align 4
@PHY_BACR_BASIC_MASK = common dso_local global i32 0, align 4
@PHY_TUNE_D18_1V7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown output voltage %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rtsx_base_switch_output_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_base_switch_output_voltage(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %47 [
    i32 128, label %9
    i32 129, label %20
  ]

9:                                                ; preds = %2
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %11 = load i32, i32* @PHY_TUNE, align 4
  %12 = load i32, i32* @PHY_TUNE_VOLTAGE_MASK, align 4
  %13 = load i32, i32* @PHY_TUNE_VOLTAGE_3V3, align 4
  %14 = call i32 @rtsx_pci_update_phy(%struct.rtsx_pcr* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %9
  br label %53

20:                                               ; preds = %2
  %21 = load i32, i32* @PHY_TUNE_D18_1V8, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %23 = call i32 @CHK_PCI_PID(%struct.rtsx_pcr* %22, i32 21065)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %27 = load i32, i32* @PHY_BACR, align 4
  %28 = load i32, i32* @PHY_BACR_BASIC_MASK, align 4
  %29 = call i32 @rtsx_pci_update_phy(%struct.rtsx_pcr* %26, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %61

34:                                               ; preds = %25
  %35 = load i32, i32* @PHY_TUNE_D18_1V7, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %20
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %38 = load i32, i32* @PHY_TUNE, align 4
  %39 = load i32, i32* @PHY_TUNE_VOLTAGE_MASK, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rtsx_pci_update_phy(%struct.rtsx_pcr* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %61

46:                                               ; preds = %36
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @pcr_dbg(%struct.rtsx_pcr* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %46, %19
  %54 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %55 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %54)
  %56 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @rts5249_fill_driving(%struct.rtsx_pcr* %56, i32 %57)
  %59 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %60 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %59, i32 100)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %47, %44, %32, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @rtsx_pci_update_phy(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @CHK_PCI_PID(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32) #1

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5249_fill_driving(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
