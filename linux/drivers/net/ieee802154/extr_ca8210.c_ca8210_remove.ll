; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ca8210_platform_data* }
%struct.ca8210_platform_data = type { i32, i64 }
%struct.ca8210_priv = type { i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Removing ca8210\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"sync_down = %d, sync_up = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unregistered & freed ieee802154_hw.\0A\00", align 1
@CONFIG_IEEE802154_CA8210_DEBUGFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ca8210_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ca8210_priv*, align 8
  %4 = alloca %struct.ca8210_platform_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_info(%struct.TYPE_2__* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %10, align 8
  store %struct.ca8210_platform_data* %11, %struct.ca8210_platform_data** %4, align 8
  %12 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %4, align 8
  %13 = icmp ne %struct.ca8210_platform_data* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %21 = call i32 @ca8210_unregister_ext_clock(%struct.spi_device* %20)
  %22 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %4, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %24 = call i32 @ca8210_config_extern_clk(%struct.ca8210_platform_data* %22, %struct.spi_device* %23, i32 0)
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %4, align 8
  %27 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @free_irq(i32 %28, i32 %32)
  %34 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %4, align 8
  %35 = call i32 @kfree(%struct.ca8210_platform_data* %34)
  %36 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store %struct.ca8210_platform_data* null, %struct.ca8210_platform_data** %38, align 8
  br label %39

39:                                               ; preds = %25, %1
  %40 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %41 = call %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device* %40)
  store %struct.ca8210_priv* %41, %struct.ca8210_priv** %3, align 8
  %42 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %43 = icmp ne %struct.ca8210_priv* %42, null
  br i1 %43, label %44, label %91

44:                                               ; preds = %39
  %45 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_info(%struct.TYPE_2__* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ca8210_dev_com_clear(i32 %57)
  %59 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %44
  %64 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @ieee802154_unregister_hw(i32* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @ieee802154_free_hw(i32* %76)
  %78 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %79 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_info(%struct.TYPE_2__* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %73, %44
  %84 = load i32, i32* @CONFIG_IEEE802154_CA8210_DEBUGFS, align 4
  %85 = call i64 @IS_ENABLED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %89 = call i32 @ca8210_test_interface_clear(%struct.ca8210_priv* %88)
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90, %39
  ret i32 0
}

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i32 @ca8210_unregister_ext_clock(%struct.spi_device*) #1

declare dso_local i32 @ca8210_config_extern_clk(%struct.ca8210_platform_data*, %struct.spi_device*, i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @kfree(%struct.ca8210_platform_data*) #1

declare dso_local %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @ca8210_dev_com_clear(i32) #1

declare dso_local i32 @ieee802154_unregister_hw(i32*) #1

declare dso_local i32 @ieee802154_free_hw(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ca8210_test_interface_clear(%struct.ca8210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
