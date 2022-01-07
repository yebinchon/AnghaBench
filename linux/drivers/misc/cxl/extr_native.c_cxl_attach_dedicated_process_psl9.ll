; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_attach_dedicated_process_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_attach_dedicated_process_psl9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.cxl_afu*)* }
%struct.cxl_afu = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.cxl_context*)* }
%struct.cxl_context = type { %struct.TYPE_6__*, %struct.cxl_afu* }
%struct.TYPE_6__ = type { i32 }

@CXL_PE_SOFTWARE_STATE_V = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_attach_dedicated_process_psl9(%struct.cxl_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxl_afu*, align 8
  %9 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %11 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %10, i32 0, i32 1
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %11, align 8
  store %struct.cxl_afu* %12, %struct.cxl_afu** %8, align 8
  %13 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @process_element_entry_psl9(%struct.cxl_context* %13, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %23 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %22, i32 0, i32 1
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %23, align 8
  %25 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %31, align 8
  %33 = icmp ne i32 (%struct.cxl_context*)* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %21
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %36 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %42, align 8
  %44 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %45 = call i32 %43(%struct.cxl_context* %44)
  br label %46

46:                                               ; preds = %34, %21
  %47 = load i32, i32* @CXL_PE_SOFTWARE_STATE_V, align 4
  %48 = call i32 @cpu_to_be32(i32 %47)
  %49 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %50 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cxl_ops, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %54, align 8
  %56 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %57 = call i32 %55(%struct.cxl_afu* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %46
  %63 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %64 = call i32 @afu_enable(%struct.cxl_afu* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %60, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @process_element_entry_psl9(%struct.cxl_context*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @afu_enable(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
