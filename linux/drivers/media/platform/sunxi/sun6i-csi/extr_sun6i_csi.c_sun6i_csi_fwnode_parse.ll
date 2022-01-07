; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_fwnode_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_fwnode_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.v4l2_async_subdev = type { i32 }
%struct.sun6i_csi = type { %struct.v4l2_fwnode_endpoint }

@.str = private unnamed_addr constant [46 x i8] c"Only support a single port with one endpoint\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported media bus type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.v4l2_fwnode_endpoint*, %struct.v4l2_async_subdev*)* @sun6i_csi_fwnode_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_csi_fwnode_parse(%struct.device* %0, %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.sun6i_csi*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.sun6i_csi* @dev_get_drvdata(%struct.device* %9)
  store %struct.sun6i_csi* %10, %struct.sun6i_csi** %8, align 8
  %11 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16, %3
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOTCONN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %37 [
    i32 128, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %27, %27
  %32 = load %struct.sun6i_csi*, %struct.sun6i_csi** %8, align 8
  %33 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %32, i32 0, i32 0
  %34 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %35 = bitcast %struct.v4l2_fwnode_endpoint* %33 to i8*
  %36 = bitcast %struct.v4l2_fwnode_endpoint* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %31, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.sun6i_csi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
