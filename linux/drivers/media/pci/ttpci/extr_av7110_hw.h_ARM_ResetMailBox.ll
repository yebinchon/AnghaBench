; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_hw.h_ARM_ResetMailBox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_hw.h_ARM_ResetMailBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32 }

@DEBINOSWAP = common dso_local global i32 0, align 4
@IRQ_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.av7110*)* @ARM_ResetMailBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ARM_ResetMailBox(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  %3 = alloca i64, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %4 = load %struct.av7110*, %struct.av7110** %2, align 8
  %5 = getelementptr inbounds %struct.av7110, %struct.av7110* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.av7110*, %struct.av7110** %2, align 8
  %9 = load i32, i32* @DEBINOSWAP, align 4
  %10 = load i32, i32* @IRQ_RX, align 4
  %11 = call i32 @av7110_debiread(%struct.av7110* %8, i32 %9, i32 %10, i32 2)
  %12 = load %struct.av7110*, %struct.av7110** %2, align 8
  %13 = load i32, i32* @DEBINOSWAP, align 4
  %14 = load i32, i32* @IRQ_RX, align 4
  %15 = call i32 @av7110_debiwrite(%struct.av7110* %12, i32 %13, i32 %14, i32 0, i32 2)
  %16 = load %struct.av7110*, %struct.av7110** %2, align 8
  %17 = getelementptr inbounds %struct.av7110, %struct.av7110* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @av7110_debiread(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @av7110_debiwrite(%struct.av7110*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
