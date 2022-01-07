; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_irq_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_irq_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Received AFU IRQ out of range for pe %i (virq %i hwirq %lx)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Received AFU interrupt %i for pe: %i (virq %i hwirq %lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Received AFU IRQ for context with no IRQ bitmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cxl_irq_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_irq_afu(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cxl_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cxl_context*
  store %struct.cxl_context* %13, %struct.cxl_context** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @irq_get_irq_data(i32 %14)
  %16 = call i32 @irqd_to_hwirq(i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %54, %2
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %24 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %22, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %33 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %21
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %57

50:                                               ; preds = %42, %21
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %17

57:                                               ; preds = %46, %17
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %60 = icmp sge i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %66 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %115

72:                                               ; preds = %57
  %73 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @trace_cxl_afu_irq(%struct.cxl_context* %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %80 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @pr_devel(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %86 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %72
  %94 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %115

96:                                               ; preds = %72
  %97 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %98 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %97, i32 0, i32 2
  %99 = call i32 @spin_lock(i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %103 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @set_bit(i32 %101, i32 %104)
  %106 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %107 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %109 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %108, i32 0, i32 2
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %112 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %111, i32 0, i32 1
  %113 = call i32 @wake_up_all(i32* %112)
  %114 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %96, %93, %64
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @irqd_to_hwirq(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local i32 @trace_cxl_afu_irq(%struct.cxl_context*, i32, i32, i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
