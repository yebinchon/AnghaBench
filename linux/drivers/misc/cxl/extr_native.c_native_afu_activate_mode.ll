; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_activate_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_activate_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*, %struct.cxl_afu*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.cxl_afu*)* }
%struct.cxl_afu = type { i32, %struct.TYPE_7__* }

@EINVAL = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Device link is down, refusing to activate!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CXL_MODE_DIRECTED = common dso_local global i32 0, align 4
@CXL_MODE_DEDICATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*, i32)* @native_afu_activate_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_afu_activate_mode(%struct.cxl_afu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl_afu*, align 8
  %5 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %70

19:                                               ; preds = %9
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cxl_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_7__*, %struct.cxl_afu*)*, i32 (%struct.TYPE_7__*, %struct.cxl_afu*)** %21, align 8
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %24 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %27 = call i32 %22(%struct.TYPE_7__* %25, %struct.cxl_afu* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @CXL_MODE_DIRECTED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %39 = call i32 @activate_afu_directed(%struct.cxl_afu* %38)
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %46 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %52, align 8
  %54 = icmp ne i32 (%struct.cxl_afu*)* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %44
  %56 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %57 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %63, align 8
  %65 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %66 = call i32 %64(%struct.cxl_afu* %65)
  store i32 %66, i32* %3, align 4
  br label %70

67:                                               ; preds = %44, %40
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %55, %37, %29, %16, %8
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @activate_afu_directed(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
