; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_get_irqchip_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_get_irqchip_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pm_irq_chip = type { i32, i32 }

@IRQCHIP_STATE_LINE_LEVEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSBI_REG_ADDR_IRQ_BLK_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed Selecting Block %d rc=%d\0A\00", align 1
@SSBI_REG_ADDR_IRQ_RT_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed Reading Status rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32, i32*)* @pm8xxx_irq_get_irqchip_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_irq_get_irqchip_state(%struct.irq_data* %0, i32 %1, i32* %2) #0 {
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
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %15 = call %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %14)
  store %struct.pm_irq_chip* %15, %struct.pm_irq_chip** %8, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %17 = call i32 @irqd_to_hwirq(%struct.irq_data* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IRQCHIP_STATE_LINE_LEVEL, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = udiv i32 %25, 8
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = urem i32 %27, 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %8, align 8
  %30 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %8, align 8
  %33 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SSBI_REG_ADDR_IRQ_BLK_SEL, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %65

44:                                               ; preds = %24
  %45 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %8, align 8
  %46 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SSBI_REG_ADDR_IRQ_RT_STATUS, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %10)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %65

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %52, %40
  %66 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %8, align 8
  %67 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
