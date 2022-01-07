; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.pm_irq_chip = type { i32, i32 }
%struct.irq_chip = type { i32 }

@SSBI_REG_ADDR_IRQ_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read root status ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @pm8xxx_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8xxx_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.pm_irq_chip*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.pm_irq_chip* @irq_desc_get_handler_data(%struct.irq_desc* %9)
  store %struct.pm_irq_chip* %10, %struct.pm_irq_chip** %3, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %11)
  store %struct.irq_chip* %12, %struct.irq_chip** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @chained_irq_enter(%struct.irq_chip* %13, %struct.irq_desc* %14)
  %16 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %17 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SSBI_REG_ADDR_IRQ_ROOT, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %5)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %53

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = lshr i32 %27, 1
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %46, %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %32 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pm8xxx_irq_master_handler(%struct.pm_irq_chip* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %51 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %52 = call i32 @chained_irq_exit(%struct.irq_chip* %50, %struct.irq_desc* %51)
  br label %53

53:                                               ; preds = %49, %23
  ret void
}

declare dso_local %struct.pm_irq_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pm8xxx_irq_master_handler(%struct.pm_irq_chip*, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
