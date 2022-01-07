; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6586x_irq_data = type { i64, i32 }
%struct.irq_data = type { i32 }
%struct.tps6586x = type { i32, i32* }

@tps6586x_irqs = common dso_local global %struct.tps6586x_irq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @tps6586x_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps6586x_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.tps6586x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps6586x_irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.tps6586x* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.tps6586x* %7, %struct.tps6586x** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.tps6586x_irq_data*, %struct.tps6586x_irq_data** @tps6586x_irqs, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tps6586x_irq_data, %struct.tps6586x_irq_data* %11, i64 %13
  store %struct.tps6586x_irq_data* %14, %struct.tps6586x_irq_data** %5, align 8
  %15 = load %struct.tps6586x_irq_data*, %struct.tps6586x_irq_data** %5, align 8
  %16 = getelementptr inbounds %struct.tps6586x_irq_data, %struct.tps6586x_irq_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %17, -1
  %19 = load %struct.tps6586x*, %struct.tps6586x** %3, align 8
  %20 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.tps6586x_irq_data*, %struct.tps6586x_irq_data** %5, align 8
  %23 = getelementptr inbounds %struct.tps6586x_irq_data, %struct.tps6586x_irq_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %18
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.tps6586x*, %struct.tps6586x** %3, align 8
  %31 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  ret void
}

declare dso_local %struct.tps6586x* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
