; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_parse_fwnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_parse_fwnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32, i64*, i32 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"endpoint node not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"parsing endpoint node failed\0A\00", align 1
@IMX214_DEFAULT_LINK_FREQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"link-frequencies %d not supported, Please review your DT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @imx214_parse_fwnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx214_parse_fwnode(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = bitcast %struct.v4l2_fwnode_endpoint* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 2
  %10 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  store i32 %10, i32* %9, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @dev_fwnode(%struct.device* %11)
  %13 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32 %12, i32* null)
  store %struct.fwnode_handle* %13, %struct.fwnode_handle** %4, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %15 = icmp ne %struct.fwnode_handle* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %23 = call i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle* %22, %struct.v4l2_fwnode_endpoint* %5)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %61

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IMX214_DEFAULT_LINK_FREQ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %30

49:                                               ; preds = %44, %30
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = load i64, i64* @IMX214_DEFAULT_LINK_FREQ, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %54, %26
  %62 = call i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint* %5)
  %63 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %64 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %16
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32, i32*) #2

declare dso_local i32 @dev_fwnode(%struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
