; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocxl_context_free(%struct.ocxl_context* %0) #0 {
  %2 = alloca %struct.ocxl_context*, align 8
  store %struct.ocxl_context* %0, %struct.ocxl_context** %2, align 8
  %3 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %4 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %9 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %15 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %19 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @idr_remove(i32* %17, i32 %20)
  %22 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %23 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %28 = call i32 @ocxl_afu_irq_free_all(%struct.ocxl_context* %27)
  %29 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %30 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %29, i32 0, i32 1
  %31 = call i32 @idr_destroy(i32* %30)
  %32 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %33 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @ocxl_afu_put(%struct.TYPE_2__* %34)
  %36 = load %struct.ocxl_context*, %struct.ocxl_context** %2, align 8
  %37 = call i32 @kfree(%struct.ocxl_context* %36)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocxl_afu_irq_free_all(%struct.ocxl_context*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @ocxl_afu_put(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.ocxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
