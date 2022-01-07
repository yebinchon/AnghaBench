; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_subdev_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_subdev_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.fimc_isp = type { i32 }
%struct.fimc_is = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"on: %d\0A\00", align 1
@IS_ST_PWR_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"firmware booting failed\0A\00", align 1
@IS_ST_PWR_SUBIP_ON = common dso_local global i32 0, align 4
@IS_ST_OPEN_SENSOR = common dso_local global i32 0, align 4
@FIMC_IS_CONFIG_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"sensor close timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"sub-IP power off timeout\0A\00", align 1
@IS_ST_INIT_DONE = common dso_local global i32 0, align 4
@IS_ST_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @fimc_isp_subdev_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_isp_subdev_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_isp*, align 8
  %7 = alloca %struct.fimc_is*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.fimc_isp* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.fimc_isp* %10, %struct.fimc_isp** %6, align 8
  %11 = load %struct.fimc_isp*, %struct.fimc_isp** %6, align 8
  %12 = call %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp* %11)
  store %struct.fimc_is* %12, %struct.fimc_is** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %19 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @pm_runtime_get_sync(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %137

27:                                               ; preds = %17
  %28 = load i32, i32* @IS_ST_PWR_ON, align 4
  %29 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %30 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %28, i64* %30)
  %32 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %33 = call i32 @fimc_is_start_firmware(%struct.fimc_is* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %38 = call i32 @v4l2_err(%struct.v4l2_subdev* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %40 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_put(i32* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %137

45:                                               ; preds = %27
  %46 = load i32, i32* @IS_ST_PWR_SUBIP_ON, align 4
  %47 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %48 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %47, i32 0, i32 1
  %49 = call i32 @set_bit(i32 %46, i64* %48)
  %50 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %51 = call i32 @fimc_is_hw_initialize(%struct.fimc_is* %50)
  store i32 %51, i32* %8, align 4
  br label %135

52:                                               ; preds = %2
  %53 = load i32, i32* @IS_ST_PWR_ON, align 4
  %54 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %55 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %54, i32 0, i32 1
  %56 = call i64 @test_bit(i32 %53, i64* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %60 = call i32 @fimc_is_hw_close_sensor(%struct.fimc_is* %59, i32 0)
  %61 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %62 = load i32, i32* @IS_ST_OPEN_SENSOR, align 4
  %63 = load i32, i32* @FIMC_IS_CONFIG_TIMEOUT, align 4
  %64 = call i32 @fimc_is_wait_event(%struct.fimc_is* %61, i32 %62, i32 0, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %69 = call i32 @v4l2_err(%struct.v4l2_subdev* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %137

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i32, i32* @IS_ST_PWR_SUBIP_ON, align 4
  %74 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %75 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i64* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %80 = call i32 @fimc_is_hw_subip_power_off(%struct.fimc_is* %79)
  %81 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %82 = load i32, i32* @IS_ST_PWR_SUBIP_ON, align 4
  %83 = load i32, i32* @FIMC_IS_CONFIG_TIMEOUT, align 4
  %84 = call i32 @fimc_is_wait_event(%struct.fimc_is* %81, i32 %82, i32 0, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %89 = call i32 @v4l2_err(%struct.v4l2_subdev* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %137

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %72
  %93 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %94 = call i32 @fimc_is_cpu_set_power(%struct.fimc_is* %93, i32 0)
  %95 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %96 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %95, i32 0, i32 3
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @pm_runtime_put_sync(i32* %98)
  %100 = load i32, i32* @IS_ST_PWR_ON, align 4
  %101 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %102 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %101, i32 0, i32 1
  %103 = call i32 @clear_bit(i32 %100, i64* %102)
  %104 = load i32, i32* @IS_ST_INIT_DONE, align 4
  %105 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %106 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %105, i32 0, i32 1
  %107 = call i32 @clear_bit(i32 %104, i64* %106)
  %108 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %109 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %111 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %114 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %121 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %124 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @IS_ST_IDLE, align 4
  %131 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %132 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %131, i32 0, i32 1
  %133 = call i32 @set_bit(i32 %130, i64* %132)
  %134 = call i32 (...) @wmb()
  br label %135

135:                                              ; preds = %92, %45
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %87, %67, %36, %25
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.fimc_isp* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @fimc_is_start_firmware(%struct.fimc_is*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @fimc_is_hw_initialize(%struct.fimc_is*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @fimc_is_hw_close_sensor(%struct.fimc_is*, i32) #1

declare dso_local i32 @fimc_is_wait_event(%struct.fimc_is*, i32, i32, i32) #1

declare dso_local i32 @fimc_is_hw_subip_power_off(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_cpu_set_power(%struct.fimc_is*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
