; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_mc_parse_of_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_mc_parse_of_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.v4l2_async_subdev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.rvin_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@RVIN_CSI_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"OF device %pOF disabled, ignoring\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"OF device %pOF already handled\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Add group OF device %pOF to slot %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.v4l2_fwnode_endpoint*, %struct.v4l2_async_subdev*)* @rvin_mc_parse_of_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_mc_parse_of_endpoint(%struct.device* %0, %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.rvin_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.rvin_dev* @dev_get_drvdata(%struct.device* %10)
  store %struct.rvin_dev* %11, %struct.rvin_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RVIN_CSI_MAX, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %108

27:                                               ; preds = %17
  %28 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @to_of_node(i64 %31)
  %33 = call i32 @of_device_is_available(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %27
  %36 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %37 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @to_of_node(i64 %40)
  %42 = call i32 (%struct.rvin_dev*, i8*, i32, ...) @vin_dbg(%struct.rvin_dev* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENOTCONN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %108

45:                                               ; preds = %27
  %46 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %47 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %45
  %65 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %66 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @to_of_node(i64 %69)
  %71 = call i32 (%struct.rvin_dev*, i8*, i32, ...) @vin_dbg(%struct.rvin_dev* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENOTCONN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %101

74:                                               ; preds = %45
  %75 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %80 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %78, i64* %89, align 8
  %90 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %91 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @to_of_node(i64 %94)
  %96 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.rvin_dev*, i8*, i32, ...) @vin_dbg(%struct.rvin_dev* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %95, i64 %99)
  br label %101

101:                                              ; preds = %74, %64
  %102 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %103 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %101, %35, %24
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.rvin_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_device_is_available(i32) #1

declare dso_local i32 @to_of_node(i64) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
