; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.wm831x = type { i32* }
%struct.wm831x_irq_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @wm831x_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.wm831x*, align 8
  %4 = alloca %struct.wm831x_irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.wm831x* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.wm831x* %6, %struct.wm831x** %3, align 8
  %7 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wm831x_irq_data* @irq_to_wm831x_irq(%struct.wm831x* %7, i32 %10)
  store %struct.wm831x_irq_data* %11, %struct.wm831x_irq_data** %4, align 8
  %12 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %17 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %15
  store i32 %26, i32* %24, align 4
  ret void
}

declare dso_local %struct.wm831x* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.wm831x_irq_data* @irq_to_wm831x_irq(%struct.wm831x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
