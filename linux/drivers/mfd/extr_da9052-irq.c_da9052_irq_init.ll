; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-irq.c_da9052_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-irq.c_da9052_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052 = type { i32, i32, i32, i32 }

@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@da9052_regmap_irq_chip = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"regmap_add_irq_chip failed: %d\0A\00", align 1
@DA9052_IRQ_ADC_EOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"adc-irq\00", align 1
@da9052_auxadc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DA9052_IRQ_ADC_EOM failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da9052_irq_init(%struct.da9052* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9052*, align 8
  %4 = alloca i32, align 4
  store %struct.da9052* %0, %struct.da9052** %3, align 8
  %5 = load %struct.da9052*, %struct.da9052** %3, align 8
  %6 = getelementptr inbounds %struct.da9052, %struct.da9052* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.da9052*, %struct.da9052** %3, align 8
  %9 = getelementptr inbounds %struct.da9052, %struct.da9052* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %12 = load i32, i32* @IRQF_ONESHOT, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.da9052*, %struct.da9052** %3, align 8
  %15 = getelementptr inbounds %struct.da9052, %struct.da9052* %14, i32 0, i32 0
  %16 = call i32 @regmap_add_irq_chip(i32 %7, i32 %10, i32 %13, i32 -1, i32* @da9052_regmap_irq_chip, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.da9052*, %struct.da9052** %3, align 8
  %21 = getelementptr inbounds %struct.da9052, %struct.da9052* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.da9052*, %struct.da9052** %3, align 8
  %27 = getelementptr inbounds %struct.da9052, %struct.da9052* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @enable_irq_wake(i32 %28)
  %30 = load %struct.da9052*, %struct.da9052** %3, align 8
  %31 = load i32, i32* @DA9052_IRQ_ADC_EOM, align 4
  %32 = load i32, i32* @da9052_auxadc_irq, align 4
  %33 = load %struct.da9052*, %struct.da9052** %3, align 8
  %34 = call i32 @da9052_request_irq(%struct.da9052* %30, i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32, %struct.da9052* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.da9052*, %struct.da9052** %3, align 8
  %39 = getelementptr inbounds %struct.da9052, %struct.da9052* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.da9052*, %struct.da9052** %3, align 8
  %46 = getelementptr inbounds %struct.da9052, %struct.da9052* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.da9052*, %struct.da9052** %3, align 8
  %49 = getelementptr inbounds %struct.da9052, %struct.da9052* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_del_irq_chip(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %19
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %43
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @da9052_request_irq(%struct.da9052*, i32, i8*, i32, %struct.da9052*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
