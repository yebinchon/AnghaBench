; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_validate_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_validate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.omap3isp_ccdc_lsc_config = type { i32, i32, i32, i32, i32, i32 }
%struct.isp_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"CCDC: LSC: Invalid paxel size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"CCDC: LSC: Offset must be a multiple of 4\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"CCDC: LSC: initial_x and y must be even\0A\00", align 1
@CCDC_PAD_SINK = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"CCDC: LSC: too small table\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"CCDC: LSC: Offset is too small\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"CCDC: LSC: Wrong size/offset combination\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*, %struct.omap3isp_ccdc_lsc_config*)* @ccdc_lsc_validate_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_lsc_validate_config(%struct.isp_ccdc_device* %0, %struct.omap3isp_ccdc_lsc_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca %struct.omap3isp_ccdc_lsc_config*, align 8
  %6 = alloca %struct.isp_device*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %4, align 8
  store %struct.omap3isp_ccdc_lsc_config* %1, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %17 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %18 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %17)
  store %struct.isp_device* %18, %struct.isp_device** %6, align 8
  %19 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %20 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %23 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %36, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  %29 = icmp ugt i32 %28, 6
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp ugt i32 %34, 6
  br i1 %35, label %36, label %43

36:                                               ; preds = %33, %30, %27, %2
  %37 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %38 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %160

43:                                               ; preds = %33
  %44 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %45 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %51 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %160

56:                                               ; preds = %43
  %57 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %58 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %64 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62, %56
  %69 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %70 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %160

75:                                               ; preds = %62
  %76 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %77 = load i32, i32* @CCDC_PAD_SINK, align 4
  %78 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %79 = call %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device* %76, i32* null, i32 %77, i32 %78)
  store %struct.v4l2_mbus_framefmt* %79, %struct.v4l2_mbus_framefmt** %7, align 8
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  %83 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 1, %86
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %90 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %88, %91
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %92, %93
  %95 = sub i32 %94, 1
  %96 = load i32, i32* %10, align 4
  %97 = lshr i32 %95, %96
  %98 = add i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = shl i32 1, %99
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %103 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %101, %104
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %105, %106
  %108 = sub i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = lshr i32 %108, %109
  %111 = add i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = mul i32 4, %112
  %114 = load i32, i32* %13, align 4
  %115 = mul i32 %113, %114
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %118 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = icmp ugt i32 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %75
  %122 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %123 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_dbg(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %160

128:                                              ; preds = %75
  %129 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %130 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = mul i32 %132, 4
  %134 = icmp ult i32 %131, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %137 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %160

142:                                              ; preds = %128
  %143 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %144 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %5, align 8
  %147 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = udiv i32 %145, %148
  %150 = load i32, i32* %13, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %142
  %153 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %154 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @dev_dbg(i32 %155, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %160

159:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %152, %135, %121, %68, %49, %36
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
