; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_mask_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_mask_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.asic3 = type { i32 }

@ASIC3_GPIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @asic3_mask_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asic3_mask_gpio_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.asic3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.asic3* %9, %struct.asic3** %3, align 8
  %10 = load %struct.asic3*, %struct.asic3** %3, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @asic3_irq_to_bank(%struct.asic3* %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.asic3*, %struct.asic3** %3, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @asic3_irq_to_index(%struct.asic3* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.asic3*, %struct.asic3** %3, align 8
  %21 = getelementptr inbounds %struct.asic3, %struct.asic3* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @raw_spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.asic3*, %struct.asic3** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ASIC3_GPIO_MASK, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @asic3_read_register(%struct.asic3* %24, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.asic3*, %struct.asic3** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ASIC3_GPIO_MASK, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @asic3_write_register(%struct.asic3* %33, i32 %36, i32 %37)
  %39 = load %struct.asic3*, %struct.asic3** %3, align 8
  %40 = getelementptr inbounds %struct.asic3, %struct.asic3* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @raw_spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @asic3_irq_to_bank(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_irq_to_index(%struct.asic3*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asic3_read_register(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
