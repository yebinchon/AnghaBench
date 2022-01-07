; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lp8788-irq.c_lp8788_irq_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lp8788-irq.c_lp8788_irq_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.lp8788_irq_data = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @lp8788_irq_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8788_irq_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.lp8788_irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.lp8788_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.lp8788_irq_data* %9, %struct.lp8788_irq_data** %3, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @_irq_to_enable_addr(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @_irq_to_mask(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %3, align 8
  %19 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_irq_to_val(i32 %17, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %3, align 8
  %27 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @lp8788_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %3, align 8
  %34 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local %struct.lp8788_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @_irq_to_enable_addr(i32) #1

declare dso_local i32 @_irq_to_mask(i32) #1

declare dso_local i32 @_irq_to_val(i32, i32) #1

declare dso_local i32 @lp8788_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
