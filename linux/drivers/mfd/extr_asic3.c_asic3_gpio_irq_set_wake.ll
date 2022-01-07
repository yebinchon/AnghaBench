; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_gpio_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_gpio_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.asic3 = type { i32 }

@ASIC3_GPIO_SLEEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @asic3_gpio_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic3_gpio_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asic3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.asic3* %10, %struct.asic3** %5, align 8
  %11 = load %struct.asic3*, %struct.asic3** %5, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @asic3_irq_to_bank(%struct.asic3* %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.asic3*, %struct.asic3** %5, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @asic3_irq_to_index(%struct.asic3* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.asic3*, %struct.asic3** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ASIC3_GPIO_SLEEP_MASK, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @asic3_set_register(%struct.asic3* %23, i32 %26, i32 %27, i32 %31)
  ret i32 0
}

declare dso_local %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @asic3_irq_to_bank(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_irq_to_index(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_set_register(%struct.asic3*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
