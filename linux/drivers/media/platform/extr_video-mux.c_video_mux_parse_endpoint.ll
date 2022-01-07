; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.v4l2_fwnode_endpoint*, %struct.v4l2_async_subdev*)* @video_mux_parse_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_mux_parse_endpoint(%struct.device* %0, %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %7 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @fwnode_device_is_available(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOTCONN, align 4
  %16 = sub nsw i32 0, %15
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi i32 [ 0, %13 ], [ %16, %14 ]
  ret i32 %18
}

declare dso_local i64 @fwnode_device_is_available(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
