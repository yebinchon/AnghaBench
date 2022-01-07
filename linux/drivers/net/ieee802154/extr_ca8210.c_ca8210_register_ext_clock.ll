; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_register_ext_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_register_ext_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ca8210_platform_data*, %struct.device_node* }
%struct.ca8210_platform_data = type { i32 }
%struct.device_node = type { i32 }
%struct.ca8210_priv = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register external clk\0A\00", align 1
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to register external clock as clock provider\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"External clock set as clock provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ca8210_register_ext_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_register_ext_clock(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ca8210_priv*, align 8
  %6 = alloca %struct.ca8210_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device* %12)
  store %struct.ca8210_priv* %13, %struct.ca8210_priv** %5, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %16, align 8
  store %struct.ca8210_platform_data* %17, %struct.ca8210_platform_data** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %6, align 8
  %30 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_register_fixed_rate(%struct.TYPE_4__* %25, i32 %28, i32* null, i32 0, i32 %31)
  %33 = load %struct.ca8210_priv*, %struct.ca8210_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ca8210_priv*, %struct.ca8210_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = call i32 @dev_crit(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.ca8210_priv*, %struct.ca8210_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %71

48:                                               ; preds = %23
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = load i32, i32* @of_clk_src_simple_get, align 4
  %51 = load %struct.ca8210_priv*, %struct.ca8210_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @of_clk_add_provider(%struct.device_node* %49, i32 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %48
  %58 = load %struct.ca8210_priv*, %struct.ca8210_priv** %5, align 8
  %59 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_unregister(i32 %60)
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = call i32 @dev_crit(%struct.TYPE_4__* %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %69

65:                                               ; preds = %48
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 0
  %68 = call i32 @dev_info(%struct.TYPE_4__* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %57
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %40, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @clk_register_fixed_rate(%struct.TYPE_4__*, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_crit(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32) #1

declare dso_local i32 @clk_unregister(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
