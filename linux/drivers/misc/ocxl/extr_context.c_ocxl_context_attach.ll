; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@OPENED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@xsl_fault_error = common dso_local global i32 0, align 4
@ATTACHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_context_attach(%struct.ocxl_context* %0, i32 %1, %struct.mm_struct* %2) #0 {
  %4 = alloca %struct.ocxl_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ocxl_context* %0, %struct.ocxl_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mm_struct* %2, %struct.mm_struct** %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %10 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %13 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OPENED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %22 = icmp ne %struct.mm_struct* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %30 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %37 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %41 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %45 = load i32, i32* @xsl_fault_error, align 4
  %46 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %47 = call i32 @ocxl_link_add_pe(i32 %35, i32 %38, i64 %39, i32 %42, i32 %43, %struct.mm_struct* %44, i32 %45, %struct.ocxl_context* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  br label %55

51:                                               ; preds = %28
  %52 = load i64, i64* @ATTACHED, align 8
  %53 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %54 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %50, %17
  %56 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %57 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocxl_link_add_pe(i32, i32, i64, i32, i32, %struct.mm_struct*, i32, %struct.ocxl_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
