; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mt6397-irq.c_mt6397_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mt6397-irq.c_mt6397_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.mt6397_chip = type { i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @mt6397_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt6397_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.mt6397_chip*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.mt6397_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.mt6397_chip* %5, %struct.mt6397_chip** %3, align 8
  %6 = load %struct.mt6397_chip*, %struct.mt6397_chip** %3, align 8
  %7 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mt6397_chip*, %struct.mt6397_chip** %3, align 8
  %10 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mt6397_chip*, %struct.mt6397_chip** %3, align 8
  %15 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_write(i32 %8, i32 %13, i32 %18)
  %20 = load %struct.mt6397_chip*, %struct.mt6397_chip** %3, align 8
  %21 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mt6397_chip*, %struct.mt6397_chip** %3, align 8
  %24 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mt6397_chip*, %struct.mt6397_chip** %3, align 8
  %29 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regmap_write(i32 %22, i32 %27, i32 %32)
  %34 = load %struct.mt6397_chip*, %struct.mt6397_chip** %3, align 8
  %35 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local %struct.mt6397_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
