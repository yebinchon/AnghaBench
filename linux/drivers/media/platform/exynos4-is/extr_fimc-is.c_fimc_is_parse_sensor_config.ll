; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_parse_sensor_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_parse_sensor_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { %struct.TYPE_2__*, %struct.fimc_is_sensor* }
%struct.TYPE_2__ = type { i32 }
%struct.fimc_is_sensor = type { i64, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"no driver data found for: %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"reg property not found at: %pOF\0A\00", align 1
@FIMC_INPUT_MIPI_CSI2_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*, i32, %struct.device_node*)* @fimc_is_parse_sensor_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_parse_sensor_config(%struct.fimc_is* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fimc_is*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.fimc_is_sensor*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %13 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %14 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %13, i32 0, i32 1
  %15 = load %struct.fimc_is_sensor*, %struct.fimc_is_sensor** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fimc_is_sensor, %struct.fimc_is_sensor* %15, i64 %17
  store %struct.fimc_is_sensor* %18, %struct.fimc_is_sensor** %8, align 8
  store i64 0, i64* %11, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = call i32 @fimc_is_sensor_get_drvdata(%struct.device_node* %19)
  %21 = load %struct.fimc_is_sensor*, %struct.fimc_is_sensor** %8, align 8
  %22 = getelementptr inbounds %struct.fimc_is_sensor, %struct.fimc_is_sensor* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.fimc_is_sensor*, %struct.fimc_is_sensor** %8, align 8
  %24 = getelementptr inbounds %struct.fimc_is_sensor, %struct.fimc_is_sensor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %3
  %28 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %29 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.device_node* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %37, i32* null)
  store %struct.device_node* %38, %struct.device_node** %9, align 8
  %39 = load %struct.device_node*, %struct.device_node** %9, align 8
  %40 = icmp ne %struct.device_node* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %77

44:                                               ; preds = %36
  %45 = load %struct.device_node*, %struct.device_node** %9, align 8
  %46 = call %struct.device_node* @of_graph_get_remote_port(%struct.device_node* %45)
  store %struct.device_node* %46, %struct.device_node** %10, align 8
  %47 = load %struct.device_node*, %struct.device_node** %9, align 8
  %48 = call i32 @of_node_put(%struct.device_node* %47)
  %49 = load %struct.device_node*, %struct.device_node** %10, align 8
  %50 = icmp ne %struct.device_node* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %77

54:                                               ; preds = %44
  %55 = load %struct.device_node*, %struct.device_node** %10, align 8
  %56 = call i32 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %11)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %61 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.device_node*, %struct.device_node** %10, align 8
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %64)
  %66 = load %struct.device_node*, %struct.device_node** %10, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %77

69:                                               ; preds = %54
  %70 = load %struct.device_node*, %struct.device_node** %10, align 8
  %71 = call i32 @of_node_put(%struct.device_node* %70)
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @FIMC_INPUT_MIPI_CSI2_0, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load %struct.fimc_is_sensor*, %struct.fimc_is_sensor** %8, align 8
  %76 = getelementptr inbounds %struct.fimc_is_sensor, %struct.fimc_is_sensor* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %59, %51, %41, %27
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @fimc_is_sensor_get_drvdata(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
