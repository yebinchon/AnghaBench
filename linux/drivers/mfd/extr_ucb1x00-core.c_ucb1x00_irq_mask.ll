; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ucb1x00 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ucb1x00_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1x00_irq_mask(%struct.irq_data* %0) #0 {
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
  %19 = xor i32 %18, -1
  %20 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %21 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ucb1x00_irq_update(%struct.ucb1x00* %24, i32 %25)
  %27 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %28 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %27, i32 0, i32 2
  %29 = call i32 @raw_spin_unlock(i32* %28)
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
