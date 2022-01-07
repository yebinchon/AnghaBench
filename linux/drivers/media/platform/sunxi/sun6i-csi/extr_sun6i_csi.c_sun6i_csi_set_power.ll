; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi = type { i32 }
%struct.sun6i_csi_dev = type { i32, i32, %struct.device*, i32, %struct.regmap* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@CSI_EN_REG = common dso_local global i32 0, align 4
@CSI_EN_CSI_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"allwinner,sun50i-a64-csi\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Enable csi clk err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Enable clk_dram_csi clk err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"reset err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun6i_csi_set_power(%struct.sun6i_csi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun6i_csi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sun6i_csi_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.sun6i_csi* %0, %struct.sun6i_csi** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sun6i_csi*, %struct.sun6i_csi** %4, align 8
  %11 = call %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi* %10)
  store %struct.sun6i_csi_dev* %11, %struct.sun6i_csi_dev** %6, align 8
  %12 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %13 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %16 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %15, i32 0, i32 4
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %2
  %21 = load %struct.regmap*, %struct.regmap** %8, align 8
  %22 = load i32, i32* @CSI_EN_REG, align 4
  %23 = load i32, i32* @CSI_EN_CSI_EN, align 4
  %24 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %26 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @of_device_is_compatible(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %36 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_rate_exclusive_put(i32 %37)
  br label %39

39:                                               ; preds = %34, %20
  %40 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %41 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_disable_unprepare(i32 %42)
  %44 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %45 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @reset_control_assert(i32 %46)
  store i32 0, i32* %3, align 4
  br label %127

48:                                               ; preds = %2
  %49 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %50 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_prepare_enable(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %57 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %56, i32 0, i32 2
  %58 = load %struct.device*, %struct.device** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %127

62:                                               ; preds = %48
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @of_device_is_compatible(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %70 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @clk_set_rate_exclusive(i32 %71, i32 300000000)
  br label %73

73:                                               ; preds = %68, %62
  %74 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %75 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @clk_prepare_enable(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %82 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %81, i32 0, i32 2
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %110

86:                                               ; preds = %73
  %87 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %88 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @reset_control_deassert(i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %95 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %94, i32 0, i32 2
  %96 = load %struct.device*, %struct.device** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %105

99:                                               ; preds = %86
  %100 = load %struct.regmap*, %struct.regmap** %8, align 8
  %101 = load i32, i32* @CSI_EN_REG, align 4
  %102 = load i32, i32* @CSI_EN_CSI_EN, align 4
  %103 = load i32, i32* @CSI_EN_CSI_EN, align 4
  %104 = call i32 @regmap_update_bits(%struct.regmap* %100, i32 %101, i32 %102, i32 %103)
  store i32 0, i32* %3, align 4
  br label %127

105:                                              ; preds = %93
  %106 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %107 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @clk_disable_unprepare(i32 %108)
  br label %110

110:                                              ; preds = %105, %80
  %111 = load %struct.device*, %struct.device** %7, align 8
  %112 = getelementptr inbounds %struct.device, %struct.device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @of_device_is_compatible(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %118 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @clk_rate_exclusive_put(i32 %119)
  br label %121

121:                                              ; preds = %116, %110
  %122 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %123 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @clk_disable_unprepare(i32 %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %99, %55, %39
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @clk_rate_exclusive_put(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_set_rate_exclusive(i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
