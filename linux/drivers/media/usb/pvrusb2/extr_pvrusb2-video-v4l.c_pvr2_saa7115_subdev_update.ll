; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-video-v4l.c_pvr2_saa7115_subdev_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-video-v4l.c_pvr2_saa7115_subdev_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.routing_scheme = type { i64, i32* }
%struct.pvr2_hdw = type { i64, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)* }

@PVR2_TRACE_CHIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"subdev v4l2 set_input(%d)\00", align 1
@routing_schemes = common dso_local global %struct.routing_scheme** null, align 8
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"*** WARNING *** subdev v4l2 set_input: Invalid routing scheme (%u) and/or input (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_saa7115_subdev_update(%struct.pvr2_hdw* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.routing_scheme*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %9 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %12, %2
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.routing_scheme**, %struct.routing_scheme*** @routing_schemes, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.routing_scheme** %30)
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load %struct.routing_scheme**, %struct.routing_scheme*** @routing_schemes, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.routing_scheme*, %struct.routing_scheme** %34, i64 %36
  %38 = load %struct.routing_scheme*, %struct.routing_scheme** %37, align 8
  br label %40

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi %struct.routing_scheme* [ %38, %33 ], [ null, %39 ]
  store %struct.routing_scheme* %41, %struct.routing_scheme** %5, align 8
  %42 = load %struct.routing_scheme*, %struct.routing_scheme** %5, align 8
  %43 = icmp eq %struct.routing_scheme* %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %46 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %51 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.routing_scheme*, %struct.routing_scheme** %5, align 8
  %54 = getelementptr inbounds %struct.routing_scheme, %struct.routing_scheme* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49, %44, %40
  %58 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %61 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %58, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %59, i64 %62)
  br label %83

64:                                               ; preds = %49
  %65 = load %struct.routing_scheme*, %struct.routing_scheme** %5, align 8
  %66 = getelementptr inbounds %struct.routing_scheme, %struct.routing_scheme* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)** %78, align 8
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 %79(%struct.v4l2_subdev* %80, i32 %81, i32 0, i32 0)
  br label %83

83:                                               ; preds = %57, %64, %12
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.routing_scheme**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
