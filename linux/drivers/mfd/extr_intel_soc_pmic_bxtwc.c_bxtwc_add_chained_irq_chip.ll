; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_bxtwc_add_chained_irq_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_bxtwc_add_chained_irq_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_pmic = type { i32, i32 }
%struct.regmap_irq_chip_data = type { i32 }
%struct.regmap_irq_chip = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Failed to get parent vIRQ(%d) for chip %s, ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_soc_pmic*, %struct.regmap_irq_chip_data*, i32, i32, %struct.regmap_irq_chip*, %struct.regmap_irq_chip_data**)* @bxtwc_add_chained_irq_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic* %0, %struct.regmap_irq_chip_data* %1, i32 %2, i32 %3, %struct.regmap_irq_chip* %4, %struct.regmap_irq_chip_data** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_soc_pmic*, align 8
  %9 = alloca %struct.regmap_irq_chip_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.regmap_irq_chip*, align 8
  %13 = alloca %struct.regmap_irq_chip_data**, align 8
  %14 = alloca i32, align 4
  store %struct.intel_soc_pmic* %0, %struct.intel_soc_pmic** %8, align 8
  store %struct.regmap_irq_chip_data* %1, %struct.regmap_irq_chip_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.regmap_irq_chip* %4, %struct.regmap_irq_chip** %12, align 8
  store %struct.regmap_irq_chip_data** %5, %struct.regmap_irq_chip_data*** %13, align 8
  %15 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @regmap_irq_get_virq(%struct.regmap_irq_chip_data* %15, i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %6
  %21 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %22 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %12, align 8
  %26 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %7, align 4
  br label %43

31:                                               ; preds = %6
  %32 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %33 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %36 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %12, align 8
  %41 = load %struct.regmap_irq_chip_data**, %struct.regmap_irq_chip_data*** %13, align 8
  %42 = call i32 @devm_regmap_add_irq_chip(i32 %34, i32 %37, i32 %38, i32 %39, i32 0, %struct.regmap_irq_chip* %40, %struct.regmap_irq_chip_data** %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %31, %20
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @regmap_irq_get_virq(%struct.regmap_irq_chip_data*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32, i32, i32, i32, i32, %struct.regmap_irq_chip*, %struct.regmap_irq_chip_data**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
