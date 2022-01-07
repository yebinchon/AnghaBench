; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_init_late_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_init_late_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i64*, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@smiapp_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN_RED = common dso_local global i64 0, align 8
@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_init_late_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_init_late_controls(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca %struct.smiapp_sensor*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %2, align 8
  %6 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %7 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %10 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %9, i32 0, i32 7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %15 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = getelementptr inbounds i64, i64* %8, i64 %17
  store i64* %18, i64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %51, %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %22 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %28 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %27, i32 0, i32 7
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %35 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %34, i32 0, i32 5
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* @V4L2_CID_TEST_PATTERN_RED, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @v4l2_ctrl_new_std(i32* %37, i32* @smiapp_ctrl_ops, i64 %41, i32 0, i32 %42, i32 1, i32 %43)
  %45 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %46 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %26
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %56 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %60 = load i64*, i64** %3, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @__fls(i64 %61)
  %63 = load i64*, i64** %3, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @__ffs(i64 %64)
  %66 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %67 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @v4l2_ctrl_new_int_menu(%struct.TYPE_10__* %58, i32* @smiapp_ctrl_ops, i32 %59, i32 %62, i32 %65, i32 %70)
  %72 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %73 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %75 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  ret i32 %79
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @v4l2_ctrl_new_std(i32*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_int_menu(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__fls(i64) #1

declare dso_local i32 @__ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
