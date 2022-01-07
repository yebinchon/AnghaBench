; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_tsc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_tsc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_irq_data = type { i64, i32, i32, i32 }
%struct.max8925_chip = type { i64, %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@max8925_irqs = common dso_local global %struct.max8925_irq_data* null, align 8
@FLAGS_RTC = common dso_local global i64 0, align 8
@FLAGS_ADC = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max8925_tsc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_tsc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max8925_chip*, align 8
  %6 = alloca %struct.max8925_irq_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.max8925_chip*
  store %struct.max8925_chip* %12, %struct.max8925_chip** %5, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %84, %2
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** @max8925_irqs, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.max8925_irq_data* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %87

18:                                               ; preds = %13
  %19 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** @max8925_irqs, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %19, i64 %21
  store %struct.max8925_irq_data* %22, %struct.max8925_irq_data** %6, align 8
  %23 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %6, align 8
  %24 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %84

28:                                               ; preds = %18
  %29 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %6, align 8
  %30 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FLAGS_RTC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %36 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %35, i32 0, i32 3
  %37 = load %struct.i2c_client*, %struct.i2c_client** %36, align 8
  store %struct.i2c_client* %37, %struct.i2c_client** %7, align 8
  br label %53

38:                                               ; preds = %28
  %39 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %6, align 8
  %40 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FLAGS_ADC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %46 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %45, i32 0, i32 2
  %47 = load %struct.i2c_client*, %struct.i2c_client** %46, align 8
  store %struct.i2c_client* %47, %struct.i2c_client** %7, align 8
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %50 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %49, i32 0, i32 1
  %51 = load %struct.i2c_client*, %struct.i2c_client** %50, align 8
  store %struct.i2c_client* %51, %struct.i2c_client** %7, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %6, align 8
  %56 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %6, align 8
  %61 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %8, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %64 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %6, align 8
  %65 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @max8925_reg_read(%struct.i2c_client* %63, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %59, %53
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %6, align 8
  %71 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %77 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @handle_nested_irq(i64 %81)
  br label %83

83:                                               ; preds = %75, %68
  br label %84

84:                                               ; preds = %83, %27
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %13

87:                                               ; preds = %13
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %88
}

declare dso_local i32 @ARRAY_SIZE(%struct.max8925_irq_data*) #1

declare dso_local i32 @max8925_reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @handle_nested_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
