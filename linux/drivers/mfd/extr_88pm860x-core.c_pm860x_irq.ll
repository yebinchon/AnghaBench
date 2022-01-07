; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_irq_data = type { i32, i32 }
%struct.pm860x_chip = type { i64, i64, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CHIP_PM8607 = common dso_local global i64 0, align 8
@pm860x_irqs = common dso_local global %struct.pm860x_irq_data* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm860x_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pm860x_chip*, align 8
  %6 = alloca %struct.pm860x_irq_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.pm860x_chip*
  store %struct.pm860x_chip* %12, %struct.pm860x_chip** %5, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.pm860x_chip*, %struct.pm860x_chip** %5, align 8
  %14 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_PM8607, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.pm860x_chip*, %struct.pm860x_chip** %5, align 8
  %20 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %19, i32 0, i32 3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.pm860x_chip*, %struct.pm860x_chip** %5, align 8
  %24 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %23, i32 0, i32 2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi %struct.i2c_client* [ %21, %18 ], [ %25, %22 ]
  store %struct.i2c_client* %27, %struct.i2c_client** %7, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %68, %26
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** @pm860x_irqs, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.pm860x_irq_data* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %28
  %34 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** @pm860x_irqs, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %34, i64 %36
  store %struct.pm860x_irq_data* %37, %struct.pm860x_irq_data** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %6, align 8
  %40 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %6, align 8
  %45 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %48 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %6, align 8
  %49 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pm860x_reg_read(%struct.i2c_client* %47, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %43, %33
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %6, align 8
  %55 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.pm860x_chip*, %struct.pm860x_chip** %5, align 8
  %61 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = call i32 @handle_nested_irq(i64 %65)
  br label %67

67:                                               ; preds = %59, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %28

71:                                               ; preds = %28
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local i32 @ARRAY_SIZE(%struct.pm860x_irq_data*) #1

declare dso_local i32 @pm860x_reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @handle_nested_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
