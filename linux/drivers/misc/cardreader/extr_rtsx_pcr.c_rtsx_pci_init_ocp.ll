; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_init_ocp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_init_ocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_3__, %struct.rtsx_cr_option, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.rtsx_cr_option = type { i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.rtsx_pcr*)* }

@FPDCTL = common dso_local global i32 0, align 4
@OC_POWER_DOWN = common dso_local global i32 0, align 4
@REG_OCPPARA1 = common dso_local global i32 0, align 4
@SD_OCP_TIME_MASK = common dso_local global i32 0, align 4
@SD_OCP_TIME_800 = common dso_local global i32 0, align 4
@REG_OCPPARA2 = common dso_local global i32 0, align 4
@SD_OCP_THD_MASK = common dso_local global i32 0, align 4
@REG_OCPGLITCH = common dso_local global i32 0, align 4
@SD_OCP_GLITCH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_pci_init_ocp(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %8, align 8
  %10 = icmp ne i32 (%struct.rtsx_pcr*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %15, align 8
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %18 = call i32 %16(%struct.rtsx_pcr* %17)
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %20, i32 0, i32 1
  store %struct.rtsx_cr_option* %21, %struct.rtsx_cr_option** %3, align 8
  %22 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %23 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %28 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = load i32, i32* @FPDCTL, align 4
  %32 = load i32, i32* @OC_POWER_DOWN, align 4
  %33 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = load i32, i32* @REG_OCPPARA1, align 4
  %36 = load i32, i32* @SD_OCP_TIME_MASK, align 4
  %37 = load i32, i32* @SD_OCP_TIME_800, align 4
  %38 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %40 = load i32, i32* @REG_OCPPARA2, align 4
  %41 = load i32, i32* @SD_OCP_THD_MASK, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %45 = load i32, i32* @REG_OCPGLITCH, align 4
  %46 = load i32, i32* @SD_OCP_GLITCH_MASK, align 4
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %48 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %44, i32 %45, i32 %46, i32 %50)
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %53 = call i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr* %52)
  br label %60

54:                                               ; preds = %19
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %56 = load i32, i32* @FPDCTL, align 4
  %57 = load i32, i32* @OC_POWER_DOWN, align 4
  %58 = load i32, i32* @OC_POWER_DOWN, align 4
  %59 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %26
  br label %61

61:                                               ; preds = %60, %11
  ret void
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
