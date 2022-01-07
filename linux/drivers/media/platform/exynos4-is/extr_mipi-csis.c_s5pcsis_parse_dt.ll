; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.csis_state = type { i64, i32, i32, i32, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@DEFAULT_SCLK_CSIS_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"No port node at %pOF\0A\00", align 1
@FIMC_INPUT_MIPI_CSI2_0 = common dso_local global i64 0, align 8
@CSIS_MAX_ENTITIES = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"samsung,csis-hs-settle\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"samsung,csis-wclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.csis_state*)* @s5pcsis_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcsis_parse_dt(%struct.platform_device* %0, %struct.csis_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.csis_state*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.csis_state* %1, %struct.csis_state** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = bitcast %struct.v4l2_fwnode_endpoint* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %16 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %15, i32 0, i32 5
  %17 = call i64 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @DEFAULT_SCLK_CSIS_FREQ, align 4
  %21 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %22 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %26 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %25, i32 0, i32 4
  %27 = call i64 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %89

32:                                               ; preds = %23
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %33, i32* null)
  store %struct.device_node* %34, %struct.device_node** %6, align 8
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  %44 = call i32 @dev_err(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %89

47:                                               ; preds = %32
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call i32 @of_fwnode_handle(%struct.device_node* %48)
  %50 = call i32 @v4l2_fwnode_endpoint_parse(i32 %49, %struct.v4l2_fwnode_endpoint* %7)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %85

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %7, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FIMC_INPUT_MIPI_CSI2_0, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %61 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %63 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CSIS_MAX_ENTITIES, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %85

70:                                               ; preds = %54
  %71 = load %struct.device_node*, %struct.device_node** %6, align 8
  %72 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %73 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %72, i32 0, i32 3
  %74 = call i64 @of_property_read_u32(%struct.device_node* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %73)
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = call i32 @of_property_read_bool(%struct.device_node* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %78 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %7, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.csis_state*, %struct.csis_state** %5, align 8
  %84 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %70, %67, %53
  %86 = load %struct.device_node*, %struct.device_node** %6, align 8
  %87 = call i32 @of_node_put(%struct.device_node* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %37, %29
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, %struct.device_node*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
