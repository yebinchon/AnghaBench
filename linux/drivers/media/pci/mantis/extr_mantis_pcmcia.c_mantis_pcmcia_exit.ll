; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pcmcia.c_mantis_pcmcia_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pcmcia.c_mantis_pcmcia_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_ca = type { %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MANTIS_GPIF_STATUS = common dso_local global i32 0, align 4
@MANTIS_CARD_PLUGOUT = common dso_local global i32 0, align 4
@MANTIS_CARD_PLUGIN = common dso_local global i32 0, align 4
@MANTIS_INT_IRQ0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mantis_pcmcia_exit(%struct.mantis_ca* %0) #0 {
  %2 = alloca %struct.mantis_ca*, align 8
  %3 = alloca %struct.mantis_pci*, align 8
  store %struct.mantis_ca* %0, %struct.mantis_ca** %2, align 8
  %4 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %5 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %4, i32 0, i32 0
  %6 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  store %struct.mantis_pci* %6, %struct.mantis_pci** %3, align 8
  %7 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %8 = call i32 @mmread(i32 %7)
  %9 = load i32, i32* @MANTIS_CARD_PLUGOUT, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @MANTIS_CARD_PLUGIN, align 4
  %12 = xor i32 %11, -1
  %13 = or i32 %10, %12
  %14 = and i32 %8, %13
  %15 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %16 = call i32 @mmwrite(i32 %14, i32 %15)
  %17 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %18 = load i32, i32* @MANTIS_INT_IRQ0, align 4
  %19 = call i32 @mantis_mask_ints(%struct.mantis_pci* %17, i32 %18)
  ret void
}

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mantis_mask_ints(%struct.mantis_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
