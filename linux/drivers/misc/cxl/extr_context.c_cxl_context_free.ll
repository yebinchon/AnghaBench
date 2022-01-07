; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c_cxl_context_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c_cxl_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@reclaim_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_context_free(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %3 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %14 = call i32 @cxl_release_mapping(%struct.cxl_context* %13)
  br label %15

15:                                               ; preds = %12, %7, %1
  %16 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %17 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %22 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %26 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @idr_remove(i32* %24, i32 %27)
  %29 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %30 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %35 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %34, i32 0, i32 0
  %36 = load i32, i32* @reclaim_ctx, align 4
  %37 = call i32 @call_rcu(i32* %35, i32 %36)
  ret void
}

declare dso_local i32 @cxl_release_mapping(%struct.cxl_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
