; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ucb1x00 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ucb1x00_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1x00_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ucb1x00*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.ucb1x00* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.ucb1x00* %6, %struct.ucb1x00** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %11 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = shl i32 1, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %16 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %15, i32 0, i32 2
  %17 = call i32 @raw_spin_lock(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %20 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ucb1x00_irq_update(%struct.ucb1x00* %23, i32 %24)
  %26 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %27 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %26, i32 0, i32 2
  %28 = call i32 @raw_spin_unlock(i32* %27)
  ret void
}

declare dso_local %struct.ucb1x00* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @ucb1x00_irq_update(%struct.ucb1x00*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
