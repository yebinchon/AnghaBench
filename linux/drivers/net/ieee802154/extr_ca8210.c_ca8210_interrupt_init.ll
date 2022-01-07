; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_interrupt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_interrupt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ca8210_platform_data* }
%struct.ca8210_platform_data = type { i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"irq-gpio\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not get irq for gpio pin %d\0A\00", align 1
@ca8210_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ca8210-irq\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"request_irq %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ca8210_interrupt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_interrupt_init(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ca8210_platform_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %8, align 8
  store %struct.ca8210_platform_data* %9, %struct.ca8210_platform_data** %5, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @of_get_named_gpio(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @gpio_to_irq(i32 %19)
  %21 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %1
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_crit(%struct.TYPE_2__* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gpio_free(i32 %36)
  %38 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %39 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %72

42:                                               ; preds = %1
  %43 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %44 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @ca8210_interrupt_handler, align 4
  %48 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = call i32 @spi_get_drvdata(%struct.spi_device* %49)
  %51 = call i32 @request_irq(i32 %46, i32 %47, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %42
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %58 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @dev_crit(%struct.TYPE_2__* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %63 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @gpio_unexport(i32 %64)
  %66 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %67 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @gpio_free(i32 %68)
  br label %70

70:                                               ; preds = %54, %42
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %27
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i64 @gpio_to_irq(i32) #1

declare dso_local i32 @dev_crit(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @gpio_unexport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
