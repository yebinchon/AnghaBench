; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_ca = type { i32, %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Adapter(%d) Exiting Mantis Host Interface\00", align 1
@MANTIS_GPIF_IRQCFG = common dso_local global i32 0, align 4
@MANTIS_MASK_BRRDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mantis_hif_exit(%struct.mantis_ca* %0) #0 {
  %2 = alloca %struct.mantis_ca*, align 8
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.mantis_ca* %0, %struct.mantis_ca** %2, align 8
  %5 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %6 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %5, i32 0, i32 1
  %7 = load %struct.mantis_pci*, %struct.mantis_pci** %6, align 8
  store %struct.mantis_pci* %7, %struct.mantis_pci** %3, align 8
  %8 = load i32, i32* @MANTIS_ERROR, align 4
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %10 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dprintk(i32 %8, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %14 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @MANTIS_GPIF_IRQCFG, align 4
  %17 = call i32 @mmread(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MANTIS_MASK_BRRDY, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MANTIS_GPIF_IRQCFG, align 4
  %24 = call i32 @mmwrite(i32 %22, i32 %23)
  %25 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %26 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
