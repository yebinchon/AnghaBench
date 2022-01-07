; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_attach_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_attach_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)* }
%struct.cxl_context = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }

@cxl_ops = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Device link is down, refusing to attach process!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CXL_MODE_DIRECTED = common dso_local global i64 0, align 8
@CXL_MODE_DEDICATED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_context*, i32, i32, i32)* @native_attach_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_attach_process(%struct.cxl_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxl_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cxl_ops, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %11, align 8
  %13 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %14 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %19 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = call i32 %12(%struct.TYPE_8__* %17, %struct.TYPE_9__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %107

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %30 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %32 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CXL_MODE_DIRECTED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %27
  %39 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %40 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.cxl_context*, i32, i32)* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %38
  %52 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %53 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %61, align 8
  %63 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 %62(%struct.cxl_context* %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %107

67:                                               ; preds = %38, %27
  %68 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %69 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CXL_MODE_DEDICATED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %67
  %76 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %77 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.cxl_context*, i32, i32)* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %75
  %89 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %90 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %98, align 8
  %100 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 %99(%struct.cxl_context* %100, i32 %101, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %107

104:                                              ; preds = %75, %67
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %88, %51, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
