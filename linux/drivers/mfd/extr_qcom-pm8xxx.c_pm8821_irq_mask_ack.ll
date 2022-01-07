; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8821_irq_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8821_irq_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pm_irq_chip = type { i32 }

@PM8821_BLOCKS_PER_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to mask IRQ:%d rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to CLEAR IRQ:%d rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @pm8821_irq_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8821_irq_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pm_irq_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.pm_irq_chip* %10, %struct.pm_irq_chip** %3, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call i32 @irqd_to_hwirq(%struct.irq_data* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = udiv i32 %13, 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PM8821_BLOCKS_PER_MASTER, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = urem i32 %18, 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @PM8821_BLOCKS_PER_MASTER, align 4
  %21 = load i32, i32* %5, align 4
  %22 = srem i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %24 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @PM8821_SSBI_ADDR_IRQ_MASK(i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = call i32 @regmap_update_bits(i32 %25, i32 %28, i32 %30, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %58

40:                                               ; preds = %1
  %41 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %42 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PM8821_SSBI_ADDR_IRQ_CLEAR(i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = call i32 @regmap_update_bits(i32 %43, i32 %46, i32 %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %36, %54, %40
  ret void
}

declare dso_local %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PM8821_SSBI_ADDR_IRQ_MASK(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @PM8821_SSBI_ADDR_IRQ_CLEAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
