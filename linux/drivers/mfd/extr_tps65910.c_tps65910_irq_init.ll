; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_irq_chip = type { i32 }
%struct.tps65910 = type { i32, i32, i32, i32 }
%struct.tps65910_platform_data = type { i32 }

@tps65910_irq_init.tps6591x_irqs_chip = internal global %struct.regmap_irq_chip* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"No interrupt support, no core IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No interrupt support, no pdata\0A\00", align 1
@tps65910_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@tps65911_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to add irq_chip %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65910*, i32, %struct.tps65910_platform_data*)* @tps65910_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_irq_init(%struct.tps65910* %0, i32 %1, %struct.tps65910_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps65910*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tps65910_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.tps65910* %0, %struct.tps65910** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tps65910_platform_data* %2, %struct.tps65910_platform_data** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %13 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_warn(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.tps65910_platform_data*, %struct.tps65910_platform_data** %7, align 8
  %20 = icmp ne %struct.tps65910_platform_data* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %23 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @dev_warn(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %66

28:                                               ; preds = %18
  %29 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %30 = call i32 @tps65910_chip_id(%struct.tps65910* %29)
  switch i32 %30, label %33 [
    i32 129, label %31
    i32 128, label %32
  ]

31:                                               ; preds = %28
  store %struct.regmap_irq_chip* @tps65910_irq_chip, %struct.regmap_irq_chip** @tps65910_irq_init.tps6591x_irqs_chip, align 8
  br label %33

32:                                               ; preds = %28
  store %struct.regmap_irq_chip* @tps65911_irq_chip, %struct.regmap_irq_chip** @tps65910_irq_init.tps6591x_irqs_chip, align 8
  br label %33

33:                                               ; preds = %28, %32, %31
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %36 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %38 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %41 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %44 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IRQF_ONESHOT, align 4
  %47 = load %struct.tps65910_platform_data*, %struct.tps65910_platform_data** %7, align 8
  %48 = getelementptr inbounds %struct.tps65910_platform_data, %struct.tps65910_platform_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** @tps65910_irq_init.tps6591x_irqs_chip, align 8
  %51 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %52 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %51, i32 0, i32 2
  %53 = call i32 @devm_regmap_add_irq_chip(i32 %39, i32 %42, i32 %45, i32 %46, i32 %49, %struct.regmap_irq_chip* %50, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %33
  %57 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %58 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, ...) @dev_warn(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %63 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %33
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %21, %11
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @tps65910_chip_id(%struct.tps65910*) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32, i32, i32, i32, i32, %struct.regmap_irq_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
