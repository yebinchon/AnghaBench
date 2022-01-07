; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_zr364xx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_zr364xx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.zr364xx_camera = type { i64, i32, i32, i32, %struct.TYPE_6__, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@init = common dso_local global %struct.TYPE_8__** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"error during open sequence: %d\0A\00", align 1
@FRAMES = common dso_local global i32 0, align 4
@ZR364XX_READ_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zr364xx_camera*)* @zr364xx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr364xx_prepare(%struct.zr364xx_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zr364xx_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zr364xx_camera* %0, %struct.zr364xx_camera** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %69, %1
  %8 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @init, align 8
  %9 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %10 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %8, i64 %11
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %72

20:                                               ; preds = %7
  %21 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %22 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %21, i32 0, i32 7
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @init, align 8
  %25 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %26 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @init, align 8
  %36 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %37 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @init, align 8
  %47 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %48 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @send_control_msg(%struct.TYPE_7__* %23, i32 1, i32 %34, i32 0, i32 %45, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %20
  %61 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %62 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %61, i32 0, i32 7
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %110

68:                                               ; preds = %20
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %7

72:                                               ; preds = %7
  %73 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %74 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %73, i32 0, i32 1
  store i32 2, i32* %74, align 8
  %75 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %76 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %75, i32 0, i32 2
  store i32 -1, i32* %76, align 4
  %77 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %78 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %80 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %103, %72
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @FRAMES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  %86 = load i32, i32* @ZR364XX_READ_IDLE, align 4
  %87 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %88 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %86, i32* %94, align 8
  %95 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %96 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %81

106:                                              ; preds = %81
  %107 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %3, align 8
  %108 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %107, i32 0, i32 3
  %109 = call i32 @v4l2_ctrl_handler_setup(i32* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %60
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @send_control_msg(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
