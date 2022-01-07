; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i32, i64, i32, i32, i32, i32, i32, %struct.address_space*, i32, i32, %struct.ocxl_afu* }
%struct.ocxl_afu = type { i32, i32, i64, i64, i32 }
%struct.address_space = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_context_alloc(%struct.ocxl_context** %0, %struct.ocxl_afu* %1, %struct.address_space* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocxl_context**, align 8
  %6 = alloca %struct.ocxl_afu*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocxl_context*, align 8
  store %struct.ocxl_context** %0, %struct.ocxl_context*** %5, align 8
  store %struct.ocxl_afu* %1, %struct.ocxl_afu** %6, align 8
  store %struct.address_space* %2, %struct.address_space** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ocxl_context* @kzalloc(i32 64, i32 %10)
  %12 = load %struct.ocxl_context**, %struct.ocxl_context*** %5, align 8
  store %struct.ocxl_context* %11, %struct.ocxl_context** %12, align 8
  %13 = load %struct.ocxl_context**, %struct.ocxl_context*** %5, align 8
  %14 = load %struct.ocxl_context*, %struct.ocxl_context** %13, align 8
  %15 = icmp ne %struct.ocxl_context* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load %struct.ocxl_context**, %struct.ocxl_context*** %5, align 8
  %21 = load %struct.ocxl_context*, %struct.ocxl_context** %20, align 8
  store %struct.ocxl_context* %21, %struct.ocxl_context** %9, align 8
  %22 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %23 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %24 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %23, i32 0, i32 10
  store %struct.ocxl_afu* %22, %struct.ocxl_afu** %24, align 8
  %25 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %26 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %29 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %28, i32 0, i32 4
  %30 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %31 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %32 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %35 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %38 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @idr_alloc(i32* %29, %struct.ocxl_context* %30, i64 %33, i64 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %19
  %46 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %47 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %89

50:                                               ; preds = %19
  %51 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %52 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %56 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %60 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @OPENED, align 4
  %62 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %63 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %65 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %64, i32 0, i32 8
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.address_space*, %struct.address_space** %7, align 8
  %68 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %69 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %68, i32 0, i32 7
  store %struct.address_space* %67, %struct.address_space** %69, align 8
  %70 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %71 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %70, i32 0, i32 6
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %74 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %73, i32 0, i32 5
  %75 = call i32 @init_waitqueue_head(i32* %74)
  %76 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %77 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %76, i32 0, i32 4
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %80 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %79, i32 0, i32 3
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %83 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %82, i32 0, i32 2
  %84 = call i32 @idr_init(i32* %83)
  %85 = load %struct.ocxl_context*, %struct.ocxl_context** %9, align 8
  %86 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %88 = call i32 @ocxl_afu_get(%struct.ocxl_afu* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %50, %45, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.ocxl_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.ocxl_context*, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @ocxl_afu_get(%struct.ocxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
