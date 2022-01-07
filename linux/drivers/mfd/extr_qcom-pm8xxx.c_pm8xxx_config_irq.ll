; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_config_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_config_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_irq_chip = type { i32, i32 }

@SSBI_REG_ADDR_IRQ_BLK_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed Selecting Block %d rc=%d\0A\00", align 1
@PM_IRQF_WRITE = common dso_local global i32 0, align 4
@SSBI_REG_ADDR_IRQ_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed Configuring IRQ rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm_irq_chip*, i32, i32)* @pm8xxx_config_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_config_irq(%struct.pm_irq_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pm_irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm_irq_chip* %0, %struct.pm_irq_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %4, align 8
  %9 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %4, align 8
  %12 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SSBI_REG_ADDR_IRQ_BLK_SEL, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @regmap_write(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %39

23:                                               ; preds = %3
  %24 = load i32, i32* @PM_IRQF_WRITE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %4, align 8
  %28 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SSBI_REG_ADDR_IRQ_CONFIG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @regmap_write(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %23
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %4, align 8
  %41 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
