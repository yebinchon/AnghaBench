; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_master_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_master_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_irq_chip = type { i32 }

@SSBI_REG_ADDR_IRQ_M_STATUS1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to read master %d ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"master bit set in root but no blocks: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm_irq_chip*, i32)* @pm8xxx_irq_master_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_irq_master_handler(%struct.pm_irq_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm_irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pm_irq_chip* %0, %struct.pm_irq_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %4, align 8
  %11 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @SSBI_REG_ADDR_IRQ_M_STATUS1, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @regmap_read(i32 %12, i64 %16, i32* %6)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  br label %57

31:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @pm8xxx_irq_block_handler(%struct.pm_irq_chip* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %41, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %28, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @pm8xxx_irq_block_handler(%struct.pm_irq_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
