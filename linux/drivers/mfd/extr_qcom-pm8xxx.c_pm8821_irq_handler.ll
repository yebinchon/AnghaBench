; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8821_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8821_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.pm_irq_chip = type { i32 }
%struct.irq_chip = type { i32 }

@PM8821_SSBI_REG_ADDR_IRQ_MASTER0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read master 0 ret=%d\0A\00", align 1
@PM8821_SSBI_REG_ADDR_IRQ_MASTER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read master 1 ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @pm8821_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8821_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.pm_irq_chip*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.pm_irq_chip* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.pm_irq_chip* %8, %struct.pm_irq_chip** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %4, align 8
  %11 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call i32 @chained_irq_enter(%struct.irq_chip* %11, %struct.irq_desc* %12)
  %14 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %15 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PM8821_SSBI_REG_ADDR_IRQ_MASTER0, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %54

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GENMASK(i32 7, i32 1)
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pm8821_irq_master_handler(%struct.pm_irq_chip* %30, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @BIT(i32 0)
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %54

39:                                               ; preds = %33
  %40 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %41 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PM8821_SSBI_REG_ADDR_IRQ_MASTER1, align 4
  %44 = call i32 @regmap_read(i32 %42, i32 %43, i32* %5)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %54

50:                                               ; preds = %39
  %51 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @pm8821_irq_master_handler(%struct.pm_irq_chip* %51, i32 1, i32 %52)
  br label %54

54:                                               ; preds = %50, %47, %38, %21
  %55 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %56 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %57 = call i32 @chained_irq_exit(%struct.irq_chip* %55, %struct.irq_desc* %56)
  ret void
}

declare dso_local %struct.pm_irq_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @pm8821_irq_master_handler(%struct.pm_irq_chip*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
