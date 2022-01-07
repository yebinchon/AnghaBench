; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.irq_data = type { i64 }
%struct.max8925_chip = type { i64 }

@max8925_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @max8925_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8925_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.max8925_chip*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.max8925_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.max8925_chip* %5, %struct.max8925_chip** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max8925_irqs, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %11 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %9, %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max8925_irqs, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %22 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %16, i32* %26, align 4
  ret void
}

declare dso_local %struct.max8925_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
