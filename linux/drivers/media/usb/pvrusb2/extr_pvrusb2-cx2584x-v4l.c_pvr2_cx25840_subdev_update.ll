; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-cx2584x-v4l.c_pvr2_cx25840_subdev_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-cx2584x-v4l.c_pvr2_cx25840_subdev_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.routing_scheme = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pvr2_hdw = type { i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)* }

@PVR2_TRACE_CHIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"subdev cx2584x update...\00", align 1
@routing_schemes = common dso_local global %struct.routing_scheme** null, align 8
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"*** WARNING *** subdev cx2584x set_input: Invalid routing scheme (%u) and/or input (%d)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"subdev cx2584x set_input vid=0x%x aud=0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_cx25840_subdev_update(%struct.pvr2_hdw* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.routing_scheme*, align 8
  %8 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %4, align 8
  %9 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %10 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %106

20:                                               ; preds = %15, %2
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.routing_scheme**, %struct.routing_scheme*** @routing_schemes, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.routing_scheme** %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.routing_scheme**, %struct.routing_scheme*** @routing_schemes, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.routing_scheme*, %struct.routing_scheme** %31, i64 %33
  %35 = load %struct.routing_scheme*, %struct.routing_scheme** %34, align 8
  br label %37

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi %struct.routing_scheme* [ %35, %30 ], [ null, %36 ]
  store %struct.routing_scheme* %38, %struct.routing_scheme** %7, align 8
  %39 = load %struct.routing_scheme*, %struct.routing_scheme** %7, align 8
  %40 = icmp eq %struct.routing_scheme* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %48 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.routing_scheme*, %struct.routing_scheme** %7, align 8
  %51 = getelementptr inbounds %struct.routing_scheme, %struct.routing_scheme* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46, %41, %37
  %55 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %55, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  br label %106

61:                                               ; preds = %46
  %62 = load %struct.routing_scheme*, %struct.routing_scheme** %7, align 8
  %63 = getelementptr inbounds %struct.routing_scheme, %struct.routing_scheme* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %66 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  %72 = load %struct.routing_scheme*, %struct.routing_scheme** %7, align 8
  %73 = getelementptr inbounds %struct.routing_scheme, %struct.routing_scheme* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %76 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)** %91, align 8
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 %92(%struct.v4l2_subdev* %93, i32 %94, i32 0, i32 0)
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)** %101, align 8
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 %102(%struct.v4l2_subdev* %103, i32 %104, i32 0, i32 0)
  br label %106

106:                                              ; preds = %54, %61, %15
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.routing_scheme**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
