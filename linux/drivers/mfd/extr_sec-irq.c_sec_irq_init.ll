; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-irq.c_sec_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-irq.c_sec_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_irq_chip = type { i32 }
%struct.sec_pmic_dev = type { i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"No interrupt specified, no interrupts\0A\00", align 1
@s5m8763_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@s5m8767_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@s2mps14_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@s2mps11_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@s2mps13_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@s2mps15_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@s2mpu02_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown device type %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register IRQ chip: %d\0A\00", align 1
@S2MPS11_IRQ_RTCA0 = common dso_local global i64 0, align 8
@S2MPS14_IRQ_RTCA0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_irq_init(%struct.sec_pmic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_pmic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap_irq_chip*, align 8
  store %struct.sec_pmic_dev* %0, %struct.sec_pmic_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %8 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %16 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %20 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  store i32 0, i32* %2, align 4
  br label %77

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %24
    i32 135, label %25
    i32 134, label %26
    i32 133, label %27
    i32 132, label %28
    i32 131, label %29
    i32 130, label %30
  ]

23:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s5m8763_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

24:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s5m8767_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

25:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s2mps14_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

26:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s2mps11_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

27:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s2mps13_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

28:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s2mps14_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

29:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s2mps15_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

30:                                               ; preds = %21
  store %struct.regmap_irq_chip* @s2mpu02_irq_chip, %struct.regmap_irq_chip** %6, align 8
  br label %41

31:                                               ; preds = %21
  %32 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %33 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %36 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %77

41:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %23
  %42 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %43 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %46 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %49 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %52 = load i32, i32* @IRQF_ONESHOT, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %55 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %6, align 8
  %58 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %59 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %58, i32 0, i32 2
  %60 = call i32 @devm_regmap_add_irq_chip(i32 %44, i32 %47, i32 %50, i32 %53, i64 %56, %struct.regmap_irq_chip* %57, i32* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  %64 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %65 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %77

70:                                               ; preds = %41
  %71 = load i64, i64* @S2MPS11_IRQ_RTCA0, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @S2MPS14_IRQ_RTCA0, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUILD_BUG_ON(i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %63, %31, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32, i32, i32, i32, i64, %struct.regmap_irq_chip*, i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
