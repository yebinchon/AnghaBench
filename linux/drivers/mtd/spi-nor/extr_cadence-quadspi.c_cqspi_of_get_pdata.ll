; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_of_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_of_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cqspi_st = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"cdns,is-decoded-cs\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cdns,fifo-depth\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't determine fifo-depth\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"cdns,fifo-width\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"couldn't determine fifo-width\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"cdns,trigger-address\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"couldn't determine trigger-address\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"cdns,rclk-en\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cqspi_of_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_of_get_pdata(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.cqspi_st*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.cqspi_st* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.cqspi_st* %11, %struct.cqspi_st** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i8* @of_property_read_bool(%struct.device_node* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.cqspi_st*, %struct.cqspi_st** %5, align 8
  %15 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.cqspi_st*, %struct.cqspi_st** %5, align 8
  %18 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %17, i32 0, i32 3
  %19 = call i64 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(%struct.TYPE_2__* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %56

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = load %struct.cqspi_st*, %struct.cqspi_st** %5, align 8
  %30 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %29, i32 0, i32 2
  %31 = call i64 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_2__* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %27
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = load %struct.cqspi_st*, %struct.cqspi_st** %5, align 8
  %42 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %41, i32 0, i32 1
  %43 = call i64 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_2__* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %39
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = call i8* @of_property_read_bool(%struct.device_node* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %54 = load %struct.cqspi_st*, %struct.cqspi_st** %5, align 8
  %55 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %45, %33, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.cqspi_st* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
