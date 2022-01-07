; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sun4i-gpadc.c_sun4i_gpadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sun4i-gpadc.c_sun4i_gpadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sun4i_gpadc_dev = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }

@sun4i_gpadc_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sun4i_gpadc_cells = common dso_local global %struct.mfd_cell* null, align 8
@sun5i_gpadc_cells = common dso_local global %struct.mfd_cell* null, align 8
@sun6i_gpadc_cells = common dso_local global %struct.mfd_cell* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sun4i_gpadc_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to init regmap: %d\0A\00", align 1
@SUN4I_GPADC_INT_FIFOC = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@sun4i_gpadc_regmap_irq_chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to add irq chip: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add MFD devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_gpadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_gpadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun4i_gpadc_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.mfd_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @sun4i_gpadc_of_match, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.of_device_id* @of_match_node(i32 %11, i32 %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %6, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %147

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  switch i64 %25, label %38 [
    i64 130, label %26
    i64 129, label %30
    i64 128, label %34
  ]

26:                                               ; preds = %22
  %27 = load %struct.mfd_cell*, %struct.mfd_cell** @sun4i_gpadc_cells, align 8
  store %struct.mfd_cell* %27, %struct.mfd_cell** %7, align 8
  %28 = load %struct.mfd_cell*, %struct.mfd_cell** @sun4i_gpadc_cells, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %28)
  store i32 %29, i32* %9, align 4
  br label %41

30:                                               ; preds = %22
  %31 = load %struct.mfd_cell*, %struct.mfd_cell** @sun5i_gpadc_cells, align 8
  store %struct.mfd_cell* %31, %struct.mfd_cell** %7, align 8
  %32 = load %struct.mfd_cell*, %struct.mfd_cell** @sun5i_gpadc_cells, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %32)
  store i32 %33, i32* %9, align 4
  br label %41

34:                                               ; preds = %22
  %35 = load %struct.mfd_cell*, %struct.mfd_cell** @sun6i_gpadc_cells, align 8
  store %struct.mfd_cell* %35, %struct.mfd_cell** %7, align 8
  %36 = load %struct.mfd_cell*, %struct.mfd_cell** @sun6i_gpadc_cells, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %36)
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %147

41:                                               ; preds = %34, %30, %26
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sun4i_gpadc_dev* @devm_kzalloc(%struct.TYPE_8__* %43, i32 24, i32 %44)
  store %struct.sun4i_gpadc_dev* %45, %struct.sun4i_gpadc_dev** %4, align 8
  %46 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %47 = icmp ne %struct.sun4i_gpadc_dev* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %147

51:                                               ; preds = %41
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %5, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %56, %struct.resource* %57)
  %59 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %60 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %62 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %68 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %147

71:                                               ; preds = %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %75 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %74, i32 0, i32 0
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %75, align 8
  %76 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %77 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %80 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %78, %struct.sun4i_gpadc_dev* %79)
  %81 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %82 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %85 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @devm_regmap_init_mmio(%struct.TYPE_8__* %83, i32 %86, i32* @sun4i_gpadc_regmap_config)
  %88 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %89 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %91 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %71
  %96 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %97 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @dev_err(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %2, align 4
  br label %147

105:                                              ; preds = %71
  %106 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %107 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SUN4I_GPADC_INT_FIFOC, align 4
  %110 = call i32 @regmap_write(i32 %108, i32 %109, i32 0)
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = call i32 @platform_get_irq(%struct.platform_device* %111, i32 0)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %116 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @IRQF_ONESHOT, align 4
  %120 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %121 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %120, i32 0, i32 1
  %122 = call i32 @devm_regmap_add_irq_chip(%struct.TYPE_8__* %114, i32 %117, i32 %118, i32 %119, i32 0, i32* @sun4i_gpadc_regmap_irq_chip, i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %105
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @dev_err(%struct.TYPE_8__* %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %2, align 4
  br label %147

131:                                              ; preds = %105
  %132 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %4, align 8
  %133 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @devm_mfd_add_devices(%struct.TYPE_8__* %134, i32 0, %struct.mfd_cell* %135, i32 %136, i32* null, i32 0, i32* null)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @dev_err(%struct.TYPE_8__* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %140, %125, %95, %66, %48, %38, %19
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mfd_cell*) #1

declare dso_local %struct.sun4i_gpadc_dev* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.sun4i_gpadc_dev*) #1

declare dso_local i32 @devm_regmap_init_mmio(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_8__*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
