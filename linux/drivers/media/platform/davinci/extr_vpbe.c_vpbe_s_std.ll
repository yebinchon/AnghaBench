; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, i32, i32, %struct.TYPE_8__, %struct.osd_state*, i32*, %struct.vpbe_config* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.osd_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)* }
%struct.vpbe_config = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@V4L2_OUT_CAP_STD = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, i32)* @vpbe_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_s_std(%struct.vpbe_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpbe_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.osd_state*, align 8
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %12 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %11, i32 0, i32 6
  %13 = load %struct.vpbe_config*, %struct.vpbe_config** %12, align 8
  store %struct.vpbe_config* %13, %struct.vpbe_config** %6, align 8
  %14 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %15 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %18 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  %21 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_OUT_CAP_STD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %2
  %36 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @vpbe_get_std_info(%struct.vpbe_device* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %35
  %44 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %45 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %44, i32 0, i32 2
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %48 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @video, align 4
  %55 = load i32, i32* @s_std_output, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @v4l2_subdev_call(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %43
  %61 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %62 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %61, i32 0, i32 4
  %63 = load %struct.osd_state*, %struct.osd_state** %62, align 8
  store %struct.osd_state* %63, %struct.osd_state** %10, align 8
  %64 = load %struct.osd_state*, %struct.osd_state** %10, align 8
  %65 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %66, align 8
  %68 = load %struct.osd_state*, %struct.osd_state** %10, align 8
  %69 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %70 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 %67(%struct.osd_state* %68, i32 %72)
  %74 = load %struct.osd_state*, %struct.osd_state** %10, align 8
  %75 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %76, align 8
  %78 = load %struct.osd_state*, %struct.osd_state** %10, align 8
  %79 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %80 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %77(%struct.osd_state* %78, i32 %82)
  br label %84

84:                                               ; preds = %60, %43
  %85 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %86 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %85, i32 0, i32 2
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %41, %32
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @vpbe_get_std_info(%struct.vpbe_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
