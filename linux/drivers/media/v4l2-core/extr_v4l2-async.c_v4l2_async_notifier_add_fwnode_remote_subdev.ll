; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_add_fwnode_remote_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_add_fwnode_remote_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.fwnode_handle* }

@ENOTCONN = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_async_notifier_add_fwnode_remote_subdev(%struct.v4l2_async_notifier* %0, %struct.fwnode_handle* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %11 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* %10)
  store %struct.fwnode_handle* %11, %struct.fwnode_handle** %8, align 8
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %13 = icmp ne %struct.fwnode_handle* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOTCONN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %19 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %22 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.fwnode_handle* %21, %struct.fwnode_handle** %24, align 8
  %25 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %26 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %27 = call i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier* %25, %struct.v4l2_async_subdev* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %32 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %31)
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle*) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier*, %struct.v4l2_async_subdev*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
