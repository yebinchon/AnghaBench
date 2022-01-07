; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_mdio_mux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_mdio_mux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.g12a_mdio_mux = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get peripheral clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to enable peripheral clock\00", align 1
@g12a_mdio_switch_fn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"mdio multiplexer init failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @g12a_mdio_mux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_mdio_mux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.g12a_mdio_mux*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.g12a_mdio_mux* @devm_kzalloc(%struct.device* %9, i32 12, i32 %10)
  store %struct.g12a_mdio_mux* %11, %struct.g12a_mdio_mux** %5, align 8
  %12 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %13 = icmp ne %struct.g12a_mdio_mux* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.g12a_mdio_mux* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %24 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %26 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %32 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %105

35:                                               ; preds = %17
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @devm_clk_get(%struct.device* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %39 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %41 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %47 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %105

59:                                               ; preds = %35
  %60 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %61 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_prepare_enable(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %105

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @g12a_ephy_glue_clk_register(%struct.device* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %99

76:                                               ; preds = %70
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @g12a_mdio_switch_fn, align 4
  %82 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %83 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %82, i32 0, i32 1
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @mdio_mux_init(%struct.device* %77, i32 %80, i32 %81, i32* %83, %struct.device* %84, i32* null)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @EPROBE_DEFER, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  br label %99

98:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %105

99:                                               ; preds = %97, %75
  %100 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %5, align 8
  %101 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_disable_unprepare(i32 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %98, %66, %57, %30, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.g12a_mdio_mux* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.g12a_mdio_mux*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @g12a_ephy_glue_clk_register(%struct.device*) #1

declare dso_local i32 @mdio_mux_init(%struct.device*, i32, i32, i32*, %struct.device*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
