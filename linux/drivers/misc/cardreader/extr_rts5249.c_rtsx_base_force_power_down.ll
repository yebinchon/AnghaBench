; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_force_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_force_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i64 }

@AUTOLOAD_CFG_BASE = common dso_local global i64 0, align 8
@HOST_ENTER_S3 = common dso_local global i64 0, align 8
@D3_DELINK_MODE_EN = common dso_local global i32 0, align 4
@FPDCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i64)* @rtsx_base_force_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_base_force_power_down(%struct.rtsx_pcr* %0, i64 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i64, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i64, i64* @AUTOLOAD_CFG_BASE, align 8
  %7 = add nsw i64 %6, 1
  %8 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i64 %7, i32 255, i32 0)
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %10 = load i64, i64* @AUTOLOAD_CFG_BASE, align 8
  %11 = add nsw i64 %10, 2
  %12 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %9, i64 %11, i32 255, i32 0)
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %14 = load i64, i64* @AUTOLOAD_CFG_BASE, align 8
  %15 = add nsw i64 %14, 3
  %16 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %13, i64 %15, i32 1, i32 0)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @HOST_ENTER_S3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %23 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @D3_DELINK_MODE_EN, align 4
  %26 = load i32, i32* @D3_DELINK_MODE_EN, align 4
  %27 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %21, i64 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %30 = load i64, i64* @FPDCTL, align 8
  %31 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %29, i64 %30, i32 3, i32 3)
  ret void
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
