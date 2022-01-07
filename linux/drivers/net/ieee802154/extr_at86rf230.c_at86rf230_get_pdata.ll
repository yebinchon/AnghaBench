; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.at86rf230_platform_data* }
%struct.at86rf230_platform_data = type { i32, i32, i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"reset-gpio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sleep-gpio\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xtal-trim\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32*, i32*, i32*)* @at86rf230_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_get_pdata(%struct.spi_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.at86rf230_platform_data*, align 8
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.at86rf230_platform_data*, %struct.at86rf230_platform_data** %14, align 8
  store %struct.at86rf230_platform_data* %15, %struct.at86rf230_platform_data** %10, align 8
  %16 = load i32, i32* @CONFIG_OF, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %19, %4
  %26 = load %struct.at86rf230_platform_data*, %struct.at86rf230_platform_data** %10, align 8
  %27 = icmp ne %struct.at86rf230_platform_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %73

31:                                               ; preds = %25
  %32 = load %struct.at86rf230_platform_data*, %struct.at86rf230_platform_data** %10, align 8
  %33 = getelementptr inbounds %struct.at86rf230_platform_data, %struct.at86rf230_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.at86rf230_platform_data*, %struct.at86rf230_platform_data** %10, align 8
  %37 = getelementptr inbounds %struct.at86rf230_platform_data, %struct.at86rf230_platform_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.at86rf230_platform_data*, %struct.at86rf230_platform_data** %10, align 8
  %41 = getelementptr inbounds %struct.at86rf230_platform_data, %struct.at86rf230_platform_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %73

44:                                               ; preds = %19
  %45 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @of_get_named_gpio(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @of_get_named_gpio(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @of_property_read_u8(i32 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %44
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %65, %44
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %70, %31, %28
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i32 @of_property_read_u8(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
