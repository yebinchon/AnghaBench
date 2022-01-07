; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_clear_ocpstat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_clear_ocpstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@SD_OCP_INT_CLR = common dso_local global i32 0, align 4
@SD_OC_CLR = common dso_local global i32 0, align 4
@REG_OCPCTL = common dso_local global i32 0, align 4
@REG_DV3318_OCPCTL = common dso_local global i32 0, align 4
@DV3318_OCP_INT_CLR = common dso_local global i32 0, align 4
@DV3318_OCP_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5260_clear_ocpstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_clear_ocpstat(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @SD_OCP_INT_CLR, align 4
  %6 = load i32, i32* @SD_OC_CLR, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @SD_OCP_INT_CLR, align 4
  %9 = load i32, i32* @SD_OC_CLR, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %12 = load i32, i32* @REG_OCPCTL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %17 = load i32, i32* @REG_DV3318_OCPCTL, align 4
  %18 = load i32, i32* @DV3318_OCP_INT_CLR, align 4
  %19 = load i32, i32* @DV3318_OCP_CLR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DV3318_OCP_INT_CLR, align 4
  %22 = load i32, i32* @DV3318_OCP_CLR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %16, i32 %17, i32 %20, i32 %23)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %27 = load i32, i32* @REG_OCPCTL, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = load i32, i32* @REG_DV3318_OCPCTL, align 4
  %32 = load i32, i32* @DV3318_OCP_INT_CLR, align 4
  %33 = load i32, i32* @DV3318_OCP_CLR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %30, i32 %31, i32 %34, i32 0)
  ret void
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
