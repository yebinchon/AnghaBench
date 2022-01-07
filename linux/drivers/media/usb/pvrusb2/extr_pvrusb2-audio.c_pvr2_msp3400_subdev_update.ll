; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-audio.c_pvr2_msp3400_subdev_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-audio.c_pvr2_msp3400_subdev_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.routing_scheme = type { i64, i32* }
%struct.pvr2_hdw = type { i64, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)* }

@PVR2_TRACE_CHIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"subdev msp3400 v4l2 set_stereo\00", align 1
@routing_schemes = common dso_local global %struct.routing_scheme** null, align 8
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"*** WARNING *** subdev msp3400 set_input: Invalid routing scheme (%u) and/or input (%d)\00", align 1
@MSP_SC_IN_DSP_SCART1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_msp3400_subdev_update(%struct.pvr2_hdw* %0, %struct.v4l2_subdev* %1) #0 {
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
  br i1 %16, label %17, label %82

17:                                               ; preds = %12, %2
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %24 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.routing_scheme**, %struct.routing_scheme*** @routing_schemes, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.routing_scheme** %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.routing_scheme**, %struct.routing_scheme*** @routing_schemes, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.routing_scheme*, %struct.routing_scheme** %30, i64 %32
  %34 = load %struct.routing_scheme*, %struct.routing_scheme** %33, align 8
  br label %36

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi %struct.routing_scheme* [ %34, %29 ], [ null, %35 ]
  store %struct.routing_scheme* %37, %struct.routing_scheme** %5, align 8
  %38 = load %struct.routing_scheme*, %struct.routing_scheme** %5, align 8
  %39 = icmp ne %struct.routing_scheme* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.routing_scheme*, %struct.routing_scheme** %5, align 8
  %50 = getelementptr inbounds %struct.routing_scheme, %struct.routing_scheme* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.routing_scheme*, %struct.routing_scheme** %5, align 8
  %55 = getelementptr inbounds %struct.routing_scheme, %struct.routing_scheme* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  br label %69

62:                                               ; preds = %45, %40, %36
  %63 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %66 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %63, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %67)
  br label %82

69:                                               ; preds = %53
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)** %75, align 8
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MSP_SC_IN_DSP_SCART1, align 4
  %80 = call i32 @MSP_OUTPUT(i32 %79)
  %81 = call i32 %76(%struct.v4l2_subdev* %77, i32 %78, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %62, %69, %12
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.routing_scheme**) #1

declare dso_local i32 @MSP_OUTPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
