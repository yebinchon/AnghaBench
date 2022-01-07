; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_tango-ir.c_tango_ir_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_tango-ir.c_tango_ir_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tango_ir = type { i64, i64 }

@IR_INT = common dso_local global i64 0, align 8
@RC6_CTRL = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tango_ir_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_ir_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tango_ir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tango_ir*
  store %struct.tango_ir* %10, %struct.tango_ir** %6, align 8
  %11 = load %struct.tango_ir*, %struct.tango_ir** %6, align 8
  %12 = getelementptr inbounds %struct.tango_ir, %struct.tango_ir* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IR_INT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.tango_ir*, %struct.tango_ir** %6, align 8
  %19 = getelementptr inbounds %struct.tango_ir, %struct.tango_ir* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IR_INT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 %17, i64 %22)
  %24 = load %struct.tango_ir*, %struct.tango_ir** %6, align 8
  %25 = getelementptr inbounds %struct.tango_ir, %struct.tango_ir* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RC6_CTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.tango_ir*, %struct.tango_ir** %6, align 8
  %32 = getelementptr inbounds %struct.tango_ir, %struct.tango_ir* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RC6_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 3
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @BIT(i32 31)
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %40, %2
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BIT(i32 0)
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.tango_ir*, %struct.tango_ir** %6, align 8
  %54 = call i32 @tango_ir_handle_rc5(%struct.tango_ir* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @BIT(i32 1)
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.tango_ir*, %struct.tango_ir** %6, align 8
  %62 = call i32 @tango_ir_handle_nec(%struct.tango_ir* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @BIT(i32 31)
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.tango_ir*, %struct.tango_ir** %6, align 8
  %70 = call i32 @tango_ir_handle_rc6(%struct.tango_ir* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %45
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @tango_ir_handle_rc5(%struct.tango_ir*) #1

declare dso_local i32 @tango_ir_handle_nec(%struct.tango_ir*) #1

declare dso_local i32 @tango_ir_handle_rc6(%struct.tango_ir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
