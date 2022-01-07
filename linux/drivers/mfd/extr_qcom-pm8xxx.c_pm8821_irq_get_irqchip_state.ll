; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8821_irq_get_irqchip_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8821_irq_get_irqchip_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pm_irq_chip = type { i32 }

@PM8821_BLOCKS_PER_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reading Status of IRQ %d failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32, i32*)* @pm8821_irq_get_irqchip_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8821_irq_get_irqchip_state(%struct.irq_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pm_irq_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %16 = call %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %15)
  store %struct.pm_irq_chip* %16, %struct.pm_irq_chip** %8, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %18 = call i32 @irqd_to_hwirq(%struct.irq_data* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PM8821_BLOCKS_PER_MASTER, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = srem i32 %24, 8
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @PM8821_BLOCKS_PER_MASTER, align 4
  %27 = load i32, i32* %11, align 4
  %28 = srem i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %8, align 8
  %30 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @PM8821_SSBI_ADDR_IRQ_RT_STATUS(i32 %32, i32 %33)
  %35 = call i32 @regmap_read(i32 %31, i32 %34, i32* %14)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %3
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %43, %38
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PM8821_SSBI_ADDR_IRQ_RT_STATUS(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
