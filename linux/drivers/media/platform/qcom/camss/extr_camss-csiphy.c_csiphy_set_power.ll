; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csiphy_device = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.csiphy_device*, %struct.device*)*, i32 (%struct.csiphy_device*)* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @csiphy_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csiphy_set_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csiphy_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.csiphy_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.csiphy_device* %10, %struct.csiphy_device** %6, align 8
  %11 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %12 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %69

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 @pm_runtime_get_sync(%struct.device* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %84

25:                                               ; preds = %18
  %26 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %27 = call i32 @csiphy_set_clock_rates(%struct.csiphy_device* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = call i32 @pm_runtime_put_sync(%struct.device* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %36 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %39 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = call i32 @camss_enable_clocks(i32 %37, i32 %40, %struct.device* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = call i32 @pm_runtime_put_sync(%struct.device* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %84

49:                                               ; preds = %34
  %50 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %51 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @enable_irq(i32 %52)
  %54 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %55 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32 (%struct.csiphy_device*)*, i32 (%struct.csiphy_device*)** %57, align 8
  %59 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %60 = call i32 %58(%struct.csiphy_device* %59)
  %61 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %62 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.csiphy_device*, %struct.device*)*, i32 (%struct.csiphy_device*, %struct.device*)** %64, align 8
  %66 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = call i32 %65(%struct.csiphy_device* %66, %struct.device* %67)
  br label %83

69:                                               ; preds = %2
  %70 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %71 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @disable_irq(i32 %72)
  %74 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %75 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %78 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @camss_disable_clocks(i32 %76, i32 %79)
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = call i32 @pm_runtime_put_sync(%struct.device* %81)
  br label %83

83:                                               ; preds = %69, %49
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %45, %30, %23
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.csiphy_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @csiphy_set_clock_rates(%struct.csiphy_device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @camss_enable_clocks(i32, i32, %struct.device*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @camss_disable_clocks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
