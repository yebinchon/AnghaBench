; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_handle_psl_slice_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_handle_psl_slice_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.cxl_context*, i32, i32)* }
%struct.cxl_context = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.cxl_context*)* }

@.str = private unnamed_addr constant [29 x i8] c"PSL ERROR STATUS: 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"STOPPING CXL TRACE\0A\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_context*, i32, i32)* @native_handle_psl_slice_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_handle_psl_slice_error(%struct.cxl_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cxl_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %8 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (i32*, i8*, ...) @dev_crit(i32* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %14 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %22, align 8
  %24 = icmp ne i32 (%struct.cxl_context*)* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %27 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %35, align 8
  %37 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %38 = call i32 %36(%struct.cxl_context* %37)
  br label %39

39:                                               ; preds = %25, %3
  %40 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %41 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_9__*)* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %39
  %53 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %54 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = call i32 (i32*, i8*, ...) @dev_crit(i32* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %59 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %67, align 8
  %69 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %70 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 %68(%struct.TYPE_9__* %73)
  br label %75

75:                                               ; preds = %52, %39
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cxl_ops, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %77, align 8
  %79 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 %78(%struct.cxl_context* %79, i32 0, i32 %80)
  ret i32 %81
}

declare dso_local i32 @dev_crit(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
