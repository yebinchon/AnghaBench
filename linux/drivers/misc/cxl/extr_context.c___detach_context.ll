; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c___detach_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c___detach_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cxl_context*)*, i64 (i32, %struct.TYPE_3__*)*, i64 (%struct.cxl_context*)* }
%struct.cxl_context = type { i32, i32*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CLOSED = common dso_local global i32 0, align 4
@STARTED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__detach_context(%struct.cxl_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_context*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  %5 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %6 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %5, i32 0, i32 5
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %9 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @CLOSED, align 4
  %12 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %13 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %15 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %14, i32 0, i32 5
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @STARTED, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %87

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64 (%struct.cxl_context*)*, i64 (%struct.cxl_context*)** %25, align 8
  %27 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %28 = call i64 %26(%struct.cxl_context* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64 (i32, %struct.TYPE_3__*)*, i64 (i32, %struct.TYPE_3__*)** %32, align 8
  %34 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %35 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %40 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i64 %33(i32 %38, %struct.TYPE_3__* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %30, %23
  %45 = phi i1 [ false, %23 ], [ %43, %30 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %49 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %48, i32 0, i32 4
  %50 = call i32 @flush_work(i32* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %52, align 8
  %54 = icmp ne i32 (%struct.cxl_context*)* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %57, align 8
  %59 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %60 = call i32 %58(%struct.cxl_context* %59)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %63 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @put_pid(i32 %64)
  %66 = call i32 (...) @cxl_ctx_put()
  %67 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %68 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cxl_adapter_context_put(i32 %71)
  %73 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %74 = call i32 @cxl_context_mm_count_put(%struct.cxl_context* %73)
  %75 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %76 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %61
  %80 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %81 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @mm_context_remove_copro(i32* %82)
  br label %84

84:                                               ; preds = %79, %61
  %85 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %86 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %20
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @cxl_ctx_put(...) #1

declare dso_local i32 @cxl_adapter_context_put(i32) #1

declare dso_local i32 @cxl_context_mm_count_put(%struct.cxl_context*) #1

declare dso_local i32 @mm_context_remove_copro(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
