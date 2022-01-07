; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_ocxl_afu_irq_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_ocxl_afu_irq_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i32, i32 }
%struct.afu_irq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_afu_irq_get_addr(%struct.ocxl_context* %0, i32 %1) #0 {
  %3 = alloca %struct.ocxl_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.afu_irq*, align 8
  %6 = alloca i32, align 4
  store %struct.ocxl_context* %0, %struct.ocxl_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %8 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %11 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %10, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.afu_irq* @idr_find(i32* %11, i32 %12)
  store %struct.afu_irq* %13, %struct.afu_irq** %5, align 8
  %14 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %15 = icmp ne %struct.afu_irq* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %18 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %22 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.afu_irq* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
