; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pm_irq_chip = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @pm8xxx_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8xxx_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pm_irq_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.pm_irq_chip* %8, %struct.pm_irq_chip** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call i32 @irqd_to_hwirq(%struct.irq_data* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = udiv i32 %11, 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %14 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pm8xxx_config_irq(%struct.pm_irq_chip* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @pm8xxx_config_irq(%struct.pm_irq_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
