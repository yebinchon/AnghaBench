; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_ocxl_afu_irq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_ocxl_afu_irq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i32, i32 }
%struct.afu_irq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_afu_irq_free(%struct.ocxl_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.afu_irq*, align 8
  store %struct.ocxl_context* %0, %struct.ocxl_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %8 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %11 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %10, i32 0, i32 1
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.afu_irq* @idr_find(i32* %11, i32 %12)
  store %struct.afu_irq* %13, %struct.afu_irq** %6, align 8
  %14 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %15 = icmp ne %struct.afu_irq* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %18 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %24 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %23, i32 0, i32 1
  %25 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %26 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @idr_remove(i32* %24, i32 %27)
  %29 = load %struct.afu_irq*, %struct.afu_irq** %6, align 8
  %30 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %31 = call i32 @afu_irq_free(%struct.afu_irq* %29, %struct.ocxl_context* %30)
  %32 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %33 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.afu_irq* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @afu_irq_free(%struct.afu_irq*, %struct.ocxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
