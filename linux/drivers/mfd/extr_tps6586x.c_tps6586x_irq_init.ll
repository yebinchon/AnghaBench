; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6586x = type { i32, i32*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@tps6586x_irqs = common dso_local global i32 0, align 4
@TPS6586X_INT_MASK1 = common dso_local global i64 0, align 8
@TPS6586X_INT_ACK1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to alloc IRQs: %d\0A\00", align 1
@tps6586x_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tps6586x_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tps6586x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6586x*, i32, i32)* @tps6586x_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_irq_init(%struct.tps6586x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps6586x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tps6586x* %0, %struct.tps6586x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @tps6586x_irqs, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %17 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %19 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %18, i32 0, i32 4
  %20 = call i32 @mutex_init(i32* %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %39, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %26 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 255, i32* %30, align 4
  %31 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %32 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* @TPS6586X_INT_MASK1, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @tps6586x_write(%struct.TYPE_5__* %33, i64 %37, i32 255)
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %44 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* @TPS6586X_INT_ACK1, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %48 = call i32 @tps6586x_reads(%struct.TYPE_5__* %45, i32 %46, i32 16, i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @irq_alloc_descs(i32 %52, i32 0, i32 %53, i32 -1)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %59 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %104

64:                                               ; preds = %51
  br label %66

65:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %68 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %75 = call i32 @irq_domain_add_simple(i32 %71, i32 %72, i32 %73, i32* @tps6586x_domain_ops, %struct.tps6586x* %74)
  %76 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %77 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %79 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %66
  %83 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %84 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %104

89:                                               ; preds = %66
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @tps6586x_irq, align 4
  %92 = load i32, i32* @IRQF_ONESHOT, align 4
  %93 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %94 = call i32 @request_threaded_irq(i32 %90, i32* null, i32 %91, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.tps6586x* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %89
  %98 = load %struct.tps6586x*, %struct.tps6586x** %5, align 8
  %99 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = call i32 @device_init_wakeup(%struct.TYPE_5__* %100, i32 1)
  br label %102

102:                                              ; preds = %97, %89
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %82, %57
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tps6586x_write(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @tps6586x_reads(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @irq_alloc_descs(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @irq_domain_add_simple(i32, i32, i32, i32*, %struct.tps6586x*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.tps6586x*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
