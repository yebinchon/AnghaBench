; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_parse_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_parse_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif_sdr = type { %struct.TYPE_6__, %struct.TYPE_8__*, %struct.v4l2_async_notifier }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_async_notifier = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"bad remote port parent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_drif_sdr*)* @rcar_drif_parse_subdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_parse_subdevs(%struct.rcar_drif_sdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_drif_sdr*, align 8
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.rcar_drif_sdr* %0, %struct.rcar_drif_sdr** %3, align 8
  %8 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %8, i32 0, i32 2
  store %struct.v4l2_async_notifier* %9, %struct.v4l2_async_notifier** %4, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %11 = call i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier* %10)
  %12 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %13 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @of_fwnode_handle(i32 %16)
  %18 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32 %17, i32* null)
  store %struct.fwnode_handle* %18, %struct.fwnode_handle** %6, align 8
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %20 = icmp ne %struct.fwnode_handle* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %24 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* %23)
  store %struct.fwnode_handle* %24, %struct.fwnode_handle** %5, align 8
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %26 = icmp ne %struct.fwnode_handle* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %29 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @dev_warn(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %33 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %67

36:                                               ; preds = %22
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %38 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.fwnode_handle* %37, %struct.fwnode_handle** %42, align 8
  %43 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %44 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %45 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %49 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %50 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier* %48, %struct.TYPE_7__* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %57 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %67

59:                                               ; preds = %36
  %60 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %61 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %62 = call i32 @rcar_drif_get_ep_properties(%struct.rcar_drif_sdr* %60, %struct.fwnode_handle* %61)
  %63 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %64 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %63)
  %65 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %66 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %59, %55, %27, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier*) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32, i32*) #1

declare dso_local i32 @of_fwnode_handle(i32) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier*, %struct.TYPE_7__*) #1

declare dso_local i32 @rcar_drif_get_ep_properties(%struct.rcar_drif_sdr*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
