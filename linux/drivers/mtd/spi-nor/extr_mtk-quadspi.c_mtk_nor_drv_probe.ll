; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.mtk_nor = type { %struct.TYPE_5__*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"No DT found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"no SPI flash device to configure\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_nor_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_nor*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %121

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mtk_nor* @devm_kzalloc(%struct.TYPE_5__* %21, i32 32, i32 %22)
  store %struct.mtk_nor* %23, %struct.mtk_nor** %7, align 8
  %24 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %25 = icmp ne %struct.mtk_nor* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %121

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.mtk_nor* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i8* @devm_ioremap_resource(%struct.TYPE_5__* %37, %struct.resource* %38)
  %40 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %41 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %43 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %49 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %121

52:                                               ; preds = %29
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i8* @devm_clk_get(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %57 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %59 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %65 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %2, align 4
  br label %121

68:                                               ; preds = %52
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i8* @devm_clk_get(%struct.TYPE_5__* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %73 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %75 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %81 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @PTR_ERR(i8* %82)
  store i32 %83, i32* %2, align 4
  br label %121

84:                                               ; preds = %68
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %88 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %87, i32 0, i32 0
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %88, align 8
  %89 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %90 = call i32 @mtk_nor_enable_clk(%struct.mtk_nor* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %121

95:                                               ; preds = %84
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.device_node* @of_get_next_available_child(i32 %99, i32* null)
  store %struct.device_node* %100, %struct.device_node** %4, align 8
  %101 = load %struct.device_node*, %struct.device_node** %4, align 8
  %102 = icmp ne %struct.device_node* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %95
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_5__* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %113

109:                                              ; preds = %95
  %110 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %111 = load %struct.device_node*, %struct.device_node** %4, align 8
  %112 = call i32 @mtk_nor_init(%struct.mtk_nor* %110, %struct.device_node* %111)
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.mtk_nor*, %struct.mtk_nor** %7, align 8
  %118 = call i32 @mtk_nor_disable_clk(%struct.mtk_nor* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %93, %79, %63, %47, %26, %13
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.mtk_nor* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_nor*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @mtk_nor_enable_clk(%struct.mtk_nor*) #1

declare dso_local %struct.device_node* @of_get_next_available_child(i32, i32*) #1

declare dso_local i32 @mtk_nor_init(%struct.mtk_nor*, %struct.device_node*) #1

declare dso_local i32 @mtk_nor_disable_clk(%struct.mtk_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
