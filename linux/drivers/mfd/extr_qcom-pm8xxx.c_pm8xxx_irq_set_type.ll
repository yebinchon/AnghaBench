; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pm_irq_chip = type { i32* }

@PM_IRQF_BITS_SHIFT = common dso_local global i32 0, align 4
@PM_IRQF_MASK_ALL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@PM_IRQF_MASK_RE = common dso_local global i32 0, align 4
@PM_IRQF_MASK_FE = common dso_local global i32 0, align 4
@PM_IRQF_LVL_SEL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@PM_IRQF_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pm8xxx_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm_irq_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = call %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.pm_irq_chip* %11, %struct.pm_irq_chip** %5, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %13 = call i32 @irqd_to_hwirq(%struct.irq_data* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = udiv i32 %14, 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = urem i32 %16, 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PM_IRQF_BITS_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @PM_IRQF_MASK_ALL, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %24 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %31 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* @PM_IRQF_MASK_RE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %44 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %42
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %40, %35
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* @PM_IRQF_MASK_FE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %60 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %58
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %56, %51
  br label %105

68:                                               ; preds = %2
  %69 = load i32, i32* @PM_IRQF_LVL_SEL, align 4
  %70 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %71 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %69
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %68
  %83 = load i32, i32* @PM_IRQF_MASK_RE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %86 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %84
  store i32 %92, i32* %90, align 4
  br label %104

93:                                               ; preds = %68
  %94 = load i32, i32* @PM_IRQF_MASK_FE, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %97 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %95
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %93, %82
  br label %105

105:                                              ; preds = %104, %67
  %106 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %107 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PM_IRQF_CLR, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %9, align 4
  %115 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @pm8xxx_config_irq(%struct.pm_irq_chip* %115, i32 %116, i32 %117)
  ret i32 %118
}

declare dso_local %struct.pm_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @pm8xxx_config_irq(%struct.pm_irq_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
