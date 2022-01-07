; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_of_get_flash_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_of_get_flash_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cqspi_flash_pdata = type { i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"cdns,read-delay\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't determine read-delay\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"cdns,tshsl-ns\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't determine tshsl-ns\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cdns,tsd2d-ns\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"couldn't determine tsd2d-ns\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"cdns,tchsh-ns\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"couldn't determine tchsh-ns\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"cdns,tslch-ns\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"couldn't determine tslch-ns\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"couldn't determine spi-max-frequency\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.cqspi_flash_pdata*, %struct.device_node*)* @cqspi_of_get_flash_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_of_get_flash_pdata(%struct.platform_device* %0, %struct.cqspi_flash_pdata* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.cqspi_flash_pdata*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.cqspi_flash_pdata* %1, %struct.cqspi_flash_pdata** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  %9 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %10 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %9, i32 0, i32 5
  %11 = call i64 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %80

19:                                               ; preds = %3
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %22 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %21, i32 0, i32 4
  %23 = call i64 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %19
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %34 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %33, i32 0, i32 3
  %35 = call i64 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %80

43:                                               ; preds = %31
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %46 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %45, i32 0, i32 2
  %47 = call i64 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %80

55:                                               ; preds = %43
  %56 = load %struct.device_node*, %struct.device_node** %7, align 8
  %57 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %58 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %57, i32 0, i32 1
  %59 = call i64 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %55
  %68 = load %struct.device_node*, %struct.device_node** %7, align 8
  %69 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %70 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %69, i32 0, i32 0
  %71 = call i64 @of_property_read_u32(%struct.device_node* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %73, %61, %49, %37, %25, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
