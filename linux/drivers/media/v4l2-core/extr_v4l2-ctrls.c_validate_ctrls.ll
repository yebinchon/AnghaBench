; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_validate_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_validate_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_controls = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_ctrl_helper = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32, i64, i64, i32 }
%struct.video_device = type { i32 }
%union.v4l2_ctrl_ptr = type { i32* }

@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"control id 0x%x is read-only\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_GRABBED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"control id 0x%x is grabbed, cannot set\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_controls*, %struct.v4l2_ctrl_helper*, %struct.video_device*, i32)* @validate_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ctrls(%struct.v4l2_ext_controls* %0, %struct.v4l2_ctrl_helper* %1, %struct.video_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ext_controls*, align 8
  %7 = alloca %struct.v4l2_ctrl_helper*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_ctrl*, align 8
  %13 = alloca %union.v4l2_ctrl_ptr, align 8
  store %struct.v4l2_ext_controls* %0, %struct.v4l2_ext_controls** %6, align 8
  store %struct.v4l2_ctrl_helper* %1, %struct.v4l2_ctrl_helper** %7, align 8
  store %struct.video_device* %2, %struct.video_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %109, %4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %112

25:                                               ; preds = %19
  %26 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %26, i64 %28
  %30 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %32, align 8
  store %struct.v4l2_ctrl* %33, %struct.v4l2_ctrl** %12, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load %struct.video_device*, %struct.video_device** %8, align 8
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dprintk(%struct.video_device* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EACCES, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %113

51:                                               ; preds = %25
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.video_device*, %struct.video_device** %8, align 8
  %63 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %64 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dprintk(%struct.video_device* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %113

69:                                               ; preds = %54, %51
  %70 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %71 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %109

75:                                               ; preds = %69
  %76 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @V4L2_CTRL_TYPE_INTEGER64, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = bitcast %union.v4l2_ctrl_ptr* %13 to i32**
  store i32* %88, i32** %89, align 8
  br label %99

90:                                               ; preds = %75
  %91 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = bitcast %union.v4l2_ctrl_ptr* %13 to i32**
  store i32* %97, i32** %98, align 8
  br label %99

99:                                               ; preds = %90, %81
  %100 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %101 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %13, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @validate_new(%struct.v4l2_ctrl* %100, i32* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %5, align 4
  br label %113

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %19

112:                                              ; preds = %19
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %106, %61, %43
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @dprintk(%struct.video_device*, i8*, i32) #1

declare dso_local i32 @validate_new(%struct.v4l2_ctrl*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
