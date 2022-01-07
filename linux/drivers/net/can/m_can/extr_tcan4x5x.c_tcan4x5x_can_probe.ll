; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_can_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_can_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.tcan4x5x_priv = type { i32, i32, %struct.m_can_classdev*, %struct.spi_device*, i32, i32 }
%struct.m_can_classdev = type { i32, i32, i32, %struct.TYPE_6__*, i32*, i32*, i32*, i32*, %struct.TYPE_5__, i64, %struct.tcan4x5x_priv* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no CAN clock source defined\0A\00", align 1
@TCAN4X5X_EXT_CLK_DEF = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@TCAN4X5X_MCAN_OFFSET = common dso_local global i32 0, align 4
@TCAN4X5X_MRAM_START = common dso_local global i32 0, align 4
@tcan4x5x_ops = common dso_local global i32 0, align 4
@tcan4x5x_bittiming_const = common dso_local global i32 0, align 4
@tcan4x5x_data_bittiming_const = common dso_local global i32 0, align 4
@tcan4x5x_bus = common dso_local global i32 0, align 4
@tcan4x5x_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"TCAN4X5X successfully initialized.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Probe failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tcan4x5x_can_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcan4x5x_can_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tcan4x5x_priv*, align 8
  %5 = alloca %struct.m_can_classdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = call %struct.m_can_classdev* @m_can_class_allocate_dev(i32* %9)
  store %struct.m_can_classdev* %10, %struct.m_can_classdev** %5, align 8
  %11 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %12 = icmp ne %struct.m_can_classdev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %160

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tcan4x5x_priv* @devm_kzalloc(i32* %18, i32 32, i32 %19)
  store %struct.tcan4x5x_priv* %20, %struct.tcan4x5x_priv** %4, align 8
  %21 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %22 = icmp ne %struct.tcan4x5x_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %160

26:                                               ; preds = %16
  %27 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %28 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %29 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %28, i32 0, i32 10
  store %struct.tcan4x5x_priv* %27, %struct.tcan4x5x_priv** %29, align 8
  %30 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %31 = call i32 @m_can_class_get_clocks(%struct.m_can_classdev* %30)
  %32 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %33 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @TCAN4X5X_EXT_CLK_DEF, align 4
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %26
  %43 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %44 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clk_get_rate(i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 20000000
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @TCAN4X5X_EXT_CLK_DEF, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @ERANGE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %160

57:                                               ; preds = %50
  %58 = load i32, i32* @TCAN4X5X_MCAN_OFFSET, align 4
  %59 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %60 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @TCAN4X5X_MRAM_START, align 4
  %62 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %63 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %66 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %65, i32 0, i32 3
  store %struct.spi_device* %64, %struct.spi_device** %66, align 8
  %67 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %68 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %69 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %68, i32 0, i32 2
  store %struct.m_can_classdev* %67, %struct.m_can_classdev** %69, align 8
  %70 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %71 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %70, i32 0, i32 9
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %74 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 1
  %79 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %80 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %79, i32 0, i32 7
  store i32* %78, i32** %80, align 8
  %81 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %82 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %81, i32 0, i32 6
  store i32* @tcan4x5x_ops, i32** %82, align 8
  %83 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %84 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %86 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %85, i32 0, i32 5
  store i32* @tcan4x5x_bittiming_const, i32** %86, align 8
  %87 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %88 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %87, i32 0, i32 4
  store i32* @tcan4x5x_data_bittiming_const, i32** %88, align 8
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %93 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %97 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %98 = call i32 @spi_set_drvdata(%struct.spi_device* %96, %struct.tcan4x5x_priv* %97)
  %99 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %100 = call i32 @tcan4x5x_parse_config(%struct.m_can_classdev* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %57
  br label %139

104:                                              ; preds = %57
  %105 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 0
  store i32 32, i32* %106, align 4
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = call i32 @spi_setup(%struct.spi_device* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %139

112:                                              ; preds = %104
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 1
  %115 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %116 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %115, i32 0, i32 1
  %117 = call i32 @devm_regmap_init(i32* %114, i32* @tcan4x5x_bus, i32* %116, i32* @tcan4x5x_regmap)
  %118 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %119 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %121 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @tcan4x5x_power_enable(i32 %122, i32 1)
  %124 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %125 = call i32 @m_can_class_register(%struct.m_can_classdev* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %112
  br label %134

129:                                              ; preds = %112
  %130 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %131 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %130, i32 0, i32 3
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 @netdev_info(%struct.TYPE_6__* %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %160

134:                                              ; preds = %128
  %135 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %136 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @tcan4x5x_power_enable(i32 %137, i32 0)
  br label %139

139:                                              ; preds = %134, %111, %103
  %140 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %141 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @IS_ERR(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %139
  %146 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %147 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @clk_disable_unprepare(i32 %148)
  %150 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %151 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @clk_disable_unprepare(i32 %152)
  br label %154

154:                                              ; preds = %145, %139
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %155, i32 0, i32 1
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %154, %129, %54, %23, %13
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.m_can_classdev* @m_can_class_allocate_dev(i32*) #1

declare dso_local %struct.tcan4x5x_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @m_can_class_get_clocks(%struct.m_can_classdev*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.tcan4x5x_priv*) #1

declare dso_local i32 @tcan4x5x_parse_config(%struct.m_can_classdev*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @devm_regmap_init(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @tcan4x5x_power_enable(i32, i32) #1

declare dso_local i32 @m_can_class_register(%struct.m_can_classdev*) #1

declare dso_local i32 @netdev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
