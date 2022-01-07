; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_csi.c_sun4i_csi_notifier_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_csi.c_sun4i_csi_notifier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_csi = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@V4L2_MBUS_PARALLEL = common dso_local global i32 0, align 4
@FWNODE_GRAPH_ENDPOINT_NEXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sun4i_csi_notify_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_csi*)* @sun4i_csi_notifier_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_csi_notifier_init(%struct.sun4i_csi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sun4i_csi*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i32, align 4
  store %struct.sun4i_csi* %0, %struct.sun4i_csi** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %8 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %10 = load i32, i32* @V4L2_MBUS_PARALLEL, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %12 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %11, i32 0, i32 0
  %13 = call i32 @v4l2_async_notifier_init(%struct.TYPE_5__* %12)
  %14 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %15 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_fwnode(i32 %16)
  %18 = load i32, i32* @FWNODE_GRAPH_ENDPOINT_NEXT, align 4
  %19 = call %struct.fwnode_handle* @fwnode_graph_get_endpoint_by_id(i32 %17, i32 0, i32 0, i32 %18)
  store %struct.fwnode_handle* %19, %struct.fwnode_handle** %5, align 8
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %21 = icmp ne %struct.fwnode_handle* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %1
  %26 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %27 = call i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle* %26, %struct.v4l2_fwnode_endpoint* %4)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %50

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %36 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %38 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %37, i32 0, i32 0
  %39 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %40 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %41 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %40, i32 0, i32 1
  %42 = call i32 @v4l2_async_notifier_add_fwnode_remote_subdev(%struct.TYPE_5__* %38, %struct.fwnode_handle* %39, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %48 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32* @sun4i_csi_notify_ops, i32** %49, align 8
  br label %50

50:                                               ; preds = %46, %45, %30
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %52 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_5__*) #2

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_endpoint_by_id(i32, i32, i32, i32) #2

declare dso_local i32 @dev_fwnode(i32) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @v4l2_async_notifier_add_fwnode_remote_subdev(%struct.TYPE_5__*, %struct.fwnode_handle*, i32*) #2

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
