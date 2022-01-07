; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csid_device = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@CAMSS_CSID_HW_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"CSID HW Version = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @csid_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csid_set_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csid_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.csid_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.csid_device* %11, %struct.csid_device** %6, align 8
  %12 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %13 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = call i32 @pm_runtime_get_sync(%struct.device* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %127

26:                                               ; preds = %19
  %27 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %28 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regulator_enable(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = call i32 @pm_runtime_put_sync(%struct.device* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %127

37:                                               ; preds = %26
  %38 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %39 = call i32 @csid_set_clock_rates(%struct.csid_device* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %44 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @regulator_disable(i32 %45)
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 @pm_runtime_put_sync(%struct.device* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %127

50:                                               ; preds = %37
  %51 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %52 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %55 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @camss_enable_clocks(i32 %53, i32 %56, %struct.device* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %63 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @regulator_disable(i32 %64)
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = call i32 @pm_runtime_put_sync(%struct.device* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %127

69:                                               ; preds = %50
  %70 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %71 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @enable_irq(i32 %72)
  %74 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %75 = call i32 @csid_reset(%struct.csid_device* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %69
  %79 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %80 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @disable_irq(i32 %81)
  %83 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %84 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %87 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @camss_disable_clocks(i32 %85, i32 %88)
  %90 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %91 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @regulator_disable(i32 %92)
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = call i32 @pm_runtime_put_sync(%struct.device* %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %127

97:                                               ; preds = %69
  %98 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %99 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CAMSS_CSID_HW_VERSION, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @readl_relaxed(i64 %102)
  store i32 %103, i32* %9, align 4
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %125

107:                                              ; preds = %2
  %108 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %109 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @disable_irq(i32 %110)
  %112 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %113 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %116 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @camss_disable_clocks(i32 %114, i32 %117)
  %119 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %120 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @regulator_disable(i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = call i32 @pm_runtime_put_sync(%struct.device* %123)
  br label %125

125:                                              ; preds = %107, %97
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %78, %61, %42, %33, %24
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.csid_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @csid_set_clock_rates(%struct.csid_device*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @camss_enable_clocks(i32, i32, %struct.device*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @csid_reset(%struct.csid_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @camss_disable_clocks(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
