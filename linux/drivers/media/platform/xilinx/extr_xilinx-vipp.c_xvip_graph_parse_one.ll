; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_graph_parse_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_graph_parse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_composite_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.v4l2_async_subdev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"parsing node %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"handling endpoint %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_composite_device*, %struct.fwnode_handle*)* @xvip_graph_parse_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_graph_parse_one(%struct.xvip_composite_device* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xvip_composite_device*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_async_subdev*, align 8
  store %struct.xvip_composite_device* %0, %struct.xvip_composite_device** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %11 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %14 = call i32 @dev_dbg(%struct.TYPE_2__* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.fwnode_handle* %13)
  br label %15

15:                                               ; preds = %2, %51, %67
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %18 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %16, %struct.fwnode_handle* %17)
  store %struct.fwnode_handle* %18, %struct.fwnode_handle** %7, align 8
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %20 = icmp eq %struct.fwnode_handle* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %68

22:                                               ; preds = %15
  %23 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %24 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %27 = call i32 @dev_dbg(%struct.TYPE_2__* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.fwnode_handle* %26)
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %29 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* %28)
  store %struct.fwnode_handle* %29, %struct.fwnode_handle** %6, align 8
  %30 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %31 = icmp eq %struct.fwnode_handle* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %69

35:                                               ; preds = %22
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %37 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %36)
  %38 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %39 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %40 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.fwnode_handle* @of_fwnode_handle(i32 %43)
  %45 = icmp eq %struct.fwnode_handle* %38, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %48 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %49 = call i64 @xvip_graph_find_entity(%struct.xvip_composite_device* %47, %struct.fwnode_handle* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %35
  %52 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %53 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %52)
  br label %15

54:                                               ; preds = %46
  %55 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %56 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %55, i32 0, i32 0
  %57 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %58 = call %struct.v4l2_async_subdev* @v4l2_async_notifier_add_fwnode_subdev(i32* %56, %struct.fwnode_handle* %57, i32 4)
  store %struct.v4l2_async_subdev* %58, %struct.v4l2_async_subdev** %9, align 8
  %59 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %60 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %59)
  %61 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %9, align 8
  %62 = call i64 @IS_ERR(%struct.v4l2_async_subdev* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %9, align 8
  %66 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %65)
  store i32 %66, i32* %8, align 4
  br label %69

67:                                               ; preds = %54
  br label %15

68:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %76

69:                                               ; preds = %64, %32
  %70 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %71 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %70, i32 0, i32 0
  %72 = call i32 @v4l2_async_notifier_cleanup(i32* %71)
  %73 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %74 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %68
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, %struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle*, %struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @of_fwnode_handle(i32) #1

declare dso_local i64 @xvip_graph_find_entity(%struct.xvip_composite_device*, %struct.fwnode_handle*) #1

declare dso_local %struct.v4l2_async_subdev* @v4l2_async_notifier_add_fwnode_subdev(i32*, %struct.fwnode_handle*, i32) #1

declare dso_local i64 @IS_ERR(%struct.v4l2_async_subdev*) #1

declare dso_local i32 @PTR_ERR(%struct.v4l2_async_subdev*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
