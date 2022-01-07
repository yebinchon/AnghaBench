; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_free_afu_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_free_afu_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*, i32)* }
%struct.cxl_context = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_free_afu_irqs(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %5 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %6 = call i32 @cpu_has_feature(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %10 = call i64 @cxl_find_afu_irq(%struct.cxl_context* %9, i32 0)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @irq_find_mapping(i32* null, i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %21 = call i32 @cxl_unmap_irq(i32 %19, %struct.cxl_context* %20)
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %8
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %26 = call i32 @afu_irq_name_free(%struct.cxl_context* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i32)*, i32 (i32*, i32)** %28, align 8
  %30 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %31 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %30, i32 0, i32 1
  %32 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %33 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %29(i32* %31, i32 %36)
  ret void
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @cxl_find_afu_irq(%struct.cxl_context*, i32) #1

declare dso_local i32 @irq_find_mapping(i32*, i64) #1

declare dso_local i32 @cxl_unmap_irq(i32, %struct.cxl_context*) #1

declare dso_local i32 @afu_irq_name_free(%struct.cxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
