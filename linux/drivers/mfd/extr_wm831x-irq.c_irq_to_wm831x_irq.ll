; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_irq_to_wm831x_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_irq_to_wm831x_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_irq_data = type { i32 }
%struct.wm831x = type { i32 }

@wm831x_irqs = common dso_local global %struct.wm831x_irq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wm831x_irq_data* (%struct.wm831x*, i32)* @irq_to_wm831x_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wm831x_irq_data* @irq_to_wm831x_irq(%struct.wm831x* %0, i32 %1) #0 {
  %3 = alloca %struct.wm831x*, align 8
  %4 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** @wm831x_irqs, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %5, i64 %7
  ret %struct.wm831x_irq_data* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
