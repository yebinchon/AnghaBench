; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_set_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_set_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i64 }

@DEV_ASPM_DYNAMIC = common dso_local global i64 0, align 8
@DEV_ASPM_BACKDOOR = common dso_local global i64 0, align 8
@FORCE_ASPM_VAL_MASK = common dso_local global i32 0, align 4
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i32)* @rtsx_comm_set_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_comm_set_aspm(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_cr_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %8, i32 0, i32 2
  store %struct.rtsx_cr_option* %9, %struct.rtsx_cr_option** %5, align 8
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %5, align 8
  %18 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DEV_ASPM_DYNAMIC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %27 = call i32 @rtsx_pci_enable_aspm(%struct.rtsx_pcr* %26)
  br label %31

28:                                               ; preds = %22
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %30 = call i32 @rtsx_pci_disable_aspm(%struct.rtsx_pcr* %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %53

32:                                               ; preds = %16
  %33 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %5, align 8
  %34 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DEV_ASPM_BACKDOOR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load i32, i32* @FORCE_ASPM_VAL_MASK, align 4
  store i32 %39, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %44 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %48 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %32
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %56 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %15
  ret void
}

declare dso_local i32 @rtsx_pci_enable_aspm(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_disable_aspm(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
