; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_afu_irq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_afu_irq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afu_irq = type { i32, i32, i32 (i32)*, i32 }
%struct.ocxl_context = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afu_irq*, %struct.ocxl_context*)* @afu_irq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afu_irq_free(%struct.afu_irq* %0, %struct.ocxl_context* %1) #0 {
  %3 = alloca %struct.afu_irq*, align 8
  %4 = alloca %struct.ocxl_context*, align 8
  store %struct.afu_irq* %0, %struct.afu_irq** %3, align 8
  store %struct.ocxl_context* %1, %struct.ocxl_context** %4, align 8
  %5 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %6 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %9 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @trace_ocxl_afu_irq_free(i32 %7, i32 %10)
  %12 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %13 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %18 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %21 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %22 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ocxl_irq_id_to_offset(%struct.ocxl_context* %20, i32 %23)
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = call i32 @unmap_mapping_range(i64 %19, i32 %24, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %16, %2
  %29 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %30 = call i32 @release_afu_irq(%struct.afu_irq* %29)
  %31 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %32 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %31, i32 0, i32 2
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = icmp ne i32 (i32)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %37 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %36, i32 0, i32 2
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %40 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %38(i32 %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %45 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %52 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ocxl_link_free_irq(i32 %50, i32 %53)
  %55 = load %struct.afu_irq*, %struct.afu_irq** %3, align 8
  %56 = call i32 @kfree(%struct.afu_irq* %55)
  ret void
}

declare dso_local i32 @trace_ocxl_afu_irq_free(i32, i32) #1

declare dso_local i32 @unmap_mapping_range(i64, i32, i32, i32) #1

declare dso_local i32 @ocxl_irq_id_to_offset(%struct.ocxl_context*, i32) #1

declare dso_local i32 @release_afu_irq(%struct.afu_irq*) #1

declare dso_local i32 @ocxl_link_free_irq(i32, i32) #1

declare dso_local i32 @kfree(%struct.afu_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
