; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_set_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_set_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i64, %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i64 }

@DEV_ASPM_DYNAMIC = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL = common dso_local global i64 0, align 8
@ASPM_MASK_NEG = common dso_local global i32 0, align 4
@DEV_ASPM_BACKDOOR = common dso_local global i64 0, align 8
@FORCE_ASPM_VAL_MASK = common dso_local global i32 0, align 4
@FORCE_ASPM_CTL0 = common dso_local global i32 0, align 4
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i32)* @rts5260_set_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_set_aspm(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_cr_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %8, i32 0, i32 3
  store %struct.rtsx_cr_option* %9, %struct.rtsx_cr_option** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %5, align 8
  %18 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DEV_ASPM_DYNAMIC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %27 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %32 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @ASPM_MASK_NEG, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @rtsx_pci_update_cfg_byte(%struct.rtsx_pcr* %30, i64 %35, i32 %36, i32 %37)
  br label %60

39:                                               ; preds = %16
  %40 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %5, align 8
  %41 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DEV_ASPM_BACKDOOR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32, i32* @FORCE_ASPM_VAL_MASK, align 4
  %47 = load i32, i32* @FORCE_ASPM_CTL0, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @FORCE_ASPM_CTL0, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %55 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %39
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %63 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %15
  ret void
}

declare dso_local i32 @rtsx_pci_update_cfg_byte(%struct.rtsx_pcr*, i64, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
