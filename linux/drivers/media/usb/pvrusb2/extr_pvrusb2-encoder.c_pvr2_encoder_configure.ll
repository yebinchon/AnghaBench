; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PVR2_TRACE_ENCODER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pvr2_encoder_configure (cx2341x module)\00", align 1
@CX2341X_PORT_STREAMING = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_NUM_VSYNC_LINES = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_EVENT_NOTIFICATION = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_VBI_LINE = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to configure cx23416\00", align 1
@CX2341X_ENC_INITIALIZE_INPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to initialize cx23416 video input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_encoder_configure(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %6 = load i32, i32* @PVR2_TRACE_ENCODER, align 4
  %7 = call i32 @pvr2_trace(i32 %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CX2341X_PORT_STREAMING, align 4
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %10 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 4
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @V4L2_STD_525_60, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  %32 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %33 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  store i32 0, i32* %4, align 4
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %36 = call i32 @pvr2_encoder_prep_config(%struct.pvr2_hdw* %35)
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  store i32 240, i32* %5, align 4
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 320, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %51 = load i32, i32* @CX2341X_ENC_SET_NUM_VSYNC_LINES, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (%struct.pvr2_hdw*, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %50, i32 %51, i32 2, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %60 = load i32, i32* @CX2341X_ENC_SET_EVENT_NOTIFICATION, align 4
  %61 = call i32 (%struct.pvr2_hdw*, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %59, i32 %60, i32 4, i32 0, i32 0, i32 268435456, i32 -1)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %67 = load i32, i32* @CX2341X_ENC_SET_VBI_LINE, align 4
  %68 = call i32 (%struct.pvr2_hdw*, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %66, i32 %67, i32 5, i32 -1, i32 0, i32 0, i32 0, i32 0)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %74 = call i32 @pvr2_trace(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %94

76:                                               ; preds = %69
  %77 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %78 = call i32 @pvr2_encoder_adjust(%struct.pvr2_hdw* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %94

83:                                               ; preds = %76
  %84 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %85 = load i32, i32* @CX2341X_ENC_INITIALIZE_INPUT, align 4
  %86 = call i32 (%struct.pvr2_hdw*, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %84, i32 %85, i32 0)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %91 = call i32 @pvr2_trace(i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %89, %81, %72
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @pvr2_encoder_prep_config(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_encoder_vcmd(%struct.pvr2_hdw*, i32, i32, ...) #1

declare dso_local i32 @pvr2_encoder_adjust(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
