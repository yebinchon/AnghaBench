; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65217 = type { i32, i32 }

@TPS65217_REG_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read IRQ status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@TPS65217_NUM_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tps65217_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tps65217*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tps65217*
  store %struct.tps65217* %12, %struct.tps65217** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %14 = load i32, i32* @TPS65217_REG_INT, align 4
  %15 = call i32 @tps65217_reg_read(%struct.tps65217* %13, i32 %14, i32* %7)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %20 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @TPS65217_NUM_IRQ, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %38 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @irq_find_mapping(i32 %39, i32 %40)
  %42 = call i32 @handle_nested_irq(i32 %41)
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %36, %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @tps65217_reg_read(%struct.tps65217*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
