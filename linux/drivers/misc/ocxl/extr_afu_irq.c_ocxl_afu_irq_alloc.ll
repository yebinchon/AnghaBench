; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_ocxl_afu_irq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_ocxl_afu_irq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.afu_irq = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_IRQ_PER_CONTEXT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_afu_irq_alloc(%struct.ocxl_context* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.afu_irq*, align 8
  %7 = alloca i32, align 4
  store %struct.ocxl_context* %0, %struct.ocxl_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.afu_irq* @kzalloc(i32 16, i32 %8)
  store %struct.afu_irq* %9, %struct.afu_irq** %6, align 8
  %10 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %11 = icmp ne %struct.afu_irq* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %104

15:                                               ; preds = %2
  %16 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %17 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %20 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %19, i32 0, i32 1
  %21 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %22 = load i32, i32* @MAX_IRQ_PER_CONTEXT, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @idr_alloc(i32* %20, %struct.afu_irq* %21, i32 0, i32 %22, i32 %23)
  %25 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %26 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %28 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %97

34:                                               ; preds = %15
  %35 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %36 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %43 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %42, i32 0, i32 1
  %44 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %45 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %44, i32 0, i32 3
  %46 = call i32 @ocxl_link_irq_alloc(i32 %41, i32* %43, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %90

50:                                               ; preds = %34
  %51 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %52 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %53 = call i32 @setup_afu_irq(%struct.ocxl_context* %51, %struct.afu_irq* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %78

57:                                               ; preds = %50
  %58 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %59 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %62 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %65 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %68 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @trace_ocxl_afu_irq_alloc(i32 %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %72 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %75 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %104

78:                                               ; preds = %56
  %79 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %80 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %87 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ocxl_link_free_irq(i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %78, %49
  %91 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %92 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %91, i32 0, i32 1
  %93 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %94 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @idr_remove(i32* %92, i32 %95)
  br label %97

97:                                               ; preds = %90, %31
  %98 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %99 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %102 = call i32 @kfree(%struct.afu_irq* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %97, %57, %12
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.afu_irq* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.afu_irq*, i32, i32, i32) #1

declare dso_local i32 @ocxl_link_irq_alloc(i32, i32*, i32*) #1

declare dso_local i32 @setup_afu_irq(%struct.ocxl_context*, %struct.afu_irq*) #1

declare dso_local i32 @trace_ocxl_afu_irq_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocxl_link_free_irq(i32, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.afu_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
