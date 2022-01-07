; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ov7670_info = type { i32, i32 }
%struct.fwnode_handle = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ov7670,pclk-hb-disable\00", align 1
@V4L2_MBUS_PARALLEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported media bus type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ov7670_info*)* @ov7670_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_parse_dt(%struct.device* %0, %struct.ov7670_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ov7670_info*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ov7670_info* %1, %struct.ov7670_info** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %10)
  store %struct.fwnode_handle* %11, %struct.fwnode_handle** %6, align 8
  %12 = bitcast %struct.v4l2_fwnode_endpoint* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %14 = icmp ne %struct.fwnode_handle* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %20 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %22 = call i64 @fwnode_property_present(%struct.fwnode_handle* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %26 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %29 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %28, i32* null)
  store %struct.fwnode_handle* %29, %struct.fwnode_handle** %8, align 8
  %30 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %31 = icmp ne %struct.fwnode_handle* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %60

35:                                               ; preds = %27
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %37 = call i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle* %36, %struct.v4l2_fwnode_endpoint* %7)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %39 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %60

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @V4L2_MBUS_PARALLEL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %7, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %59 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %49, %42, %32, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @fwnode_property_present(%struct.fwnode_handle*, i8*) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle*, i32*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
