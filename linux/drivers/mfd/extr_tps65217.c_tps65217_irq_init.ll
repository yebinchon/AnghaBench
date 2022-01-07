; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65217 = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TPS65217_INT_MASK = common dso_local global i32 0, align 4
@TPS65217_REG_INT = common dso_local global i32 0, align 4
@TPS65217_PROTECT_NONE = common dso_local global i32 0, align 4
@TPS65217_NUM_IRQ = common dso_local global i32 0, align 4
@tps65217_irq_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tps65217_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tps65217-irq\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65217*, i32)* @tps65217_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_irq_init(%struct.tps65217* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps65217*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tps65217* %0, %struct.tps65217** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %8 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %7, i32 0, i32 4
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %12 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @TPS65217_INT_MASK, align 4
  %14 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %15 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %17 = load i32, i32* @TPS65217_REG_INT, align 4
  %18 = load i32, i32* @TPS65217_INT_MASK, align 4
  %19 = load i32, i32* @TPS65217_INT_MASK, align 4
  %20 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %21 = call i32 @tps65217_set_bits(%struct.tps65217* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %23 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TPS65217_NUM_IRQ, align 4
  %28 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %29 = call i32 @irq_domain_add_linear(i32 %26, i32 %27, i32* @tps65217_irq_domain_ops, %struct.tps65217* %28)
  %30 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %31 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %33 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %2
  %37 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %38 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %2
  %44 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %45 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @tps65217_irq_thread, align 4
  %49 = load i32, i32* @IRQF_ONESHOT, align 4
  %50 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %51 = call i32 @devm_request_threaded_irq(%struct.TYPE_3__* %46, i32 %47, i32* null, i32 %48, i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.tps65217* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %43
  %55 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %56 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %43
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @enable_irq_wake(i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %54, %36
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tps65217_set_bits(%struct.tps65217*, i32, i32, i32, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.tps65217*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_3__*, i32, i32*, i32, i32, i8*, %struct.tps65217*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
