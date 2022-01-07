; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-irq.c_da9052_irq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-irq.c_da9052_irq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052 = type { i32, i32 }

@DA9052_IRQ_ADC_EOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da9052_irq_exit(%struct.da9052* %0) #0 {
  %2 = alloca %struct.da9052*, align 8
  store %struct.da9052* %0, %struct.da9052** %2, align 8
  %3 = load %struct.da9052*, %struct.da9052** %2, align 8
  %4 = load i32, i32* @DA9052_IRQ_ADC_EOM, align 4
  %5 = load %struct.da9052*, %struct.da9052** %2, align 8
  %6 = call i32 @da9052_free_irq(%struct.da9052* %3, i32 %4, %struct.da9052* %5)
  %7 = load %struct.da9052*, %struct.da9052** %2, align 8
  %8 = getelementptr inbounds %struct.da9052, %struct.da9052* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.da9052*, %struct.da9052** %2, align 8
  %11 = getelementptr inbounds %struct.da9052, %struct.da9052* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_del_irq_chip(i32 %9, i32 %12)
  ret i32 0
}

declare dso_local i32 @da9052_free_irq(%struct.da9052*, i32, %struct.da9052*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
