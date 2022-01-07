; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_allocate_afu_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_allocate_afu_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cxl_context*)*, i32 }
%struct.cxl_context = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"psl\00", align 1
@STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"BUG: cxl_allocate_afu_irqs must be called prior to starting the context on this platform\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_allocate_afu_irqs(%struct.cxl_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %12 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @afu_allocate_irqs(%struct.cxl_context* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %16
  %25 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %26 = call i32 @cpu_has_feature(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %30 = call i64 @cxl_find_afu_irq(%struct.cxl_context* %29, i32 0)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %35 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %44 = call i32 @cxl_map_irq(i32 %38, i64 %39, i32 %42, %struct.cxl_context* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %33, %28
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %48 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @STARTED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %54, align 8
  %56 = icmp ne i32 (%struct.cxl_context*)* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %59, align 8
  %61 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %62 = call i32 %60(%struct.cxl_context* %61)
  br label %65

63:                                               ; preds = %52
  %64 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @afu_allocate_irqs(%struct.cxl_context*, i32) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @cxl_find_afu_irq(%struct.cxl_context*, i32) #1

declare dso_local i32 @cxl_map_irq(i32, i64, i32, %struct.cxl_context*, i8*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
