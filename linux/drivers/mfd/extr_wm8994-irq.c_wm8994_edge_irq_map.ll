; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-irq.c_wm8994_edge_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-irq.c_wm8994_edge_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.wm8994* }
%struct.wm8994 = type { i32 }

@wm8994_edge_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @wm8994_edge_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_edge_irq_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8994*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %8, i32 0, i32 0
  %10 = load %struct.wm8994*, %struct.wm8994** %9, align 8
  store %struct.wm8994* %10, %struct.wm8994** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %13 = call i32 @irq_set_chip_data(i32 %11, %struct.wm8994* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @handle_edge_irq, align 4
  %16 = call i32 @irq_set_chip_and_handler(i32 %14, i32* @wm8994_edge_irq_chip, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @irq_set_nested_thread(i32 %17, i32 1)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @irq_set_noprobe(i32 %19)
  ret i32 0
}

declare dso_local i32 @irq_set_chip_data(i32, %struct.wm8994*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_nested_thread(i32, i32) #1

declare dso_local i32 @irq_set_noprobe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
