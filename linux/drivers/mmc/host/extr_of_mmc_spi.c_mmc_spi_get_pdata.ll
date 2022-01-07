; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_of_mmc_spi.c_mmc_spi_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_of_mmc_spi.c_mmc_spi_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_platform_data = type { i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device }
%struct.device = type { %struct.mmc_spi_platform_data*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_mmc_spi = type { i64, %struct.mmc_spi_platform_data }

@GFP_KERNEL = common dso_local global i32 0, align 4
@of_mmc_spi_init = common dso_local global i32 0, align 4
@of_mmc_spi_exit = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mmc_spi_platform_data* @mmc_spi_get_pdata(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.mmc_spi_platform_data*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_mmc_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 1
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.mmc_spi_platform_data*, %struct.mmc_spi_platform_data** %13, align 8
  %15 = icmp ne %struct.mmc_spi_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.mmc_spi_platform_data*, %struct.mmc_spi_platform_data** %21, align 8
  store %struct.mmc_spi_platform_data* %22, %struct.mmc_spi_platform_data** %2, align 8
  br label %73

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.of_mmc_spi* @kzalloc(i32 24, i32 %24)
  store %struct.of_mmc_spi* %25, %struct.of_mmc_spi** %6, align 8
  %26 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %27 = icmp ne %struct.of_mmc_spi* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store %struct.mmc_spi_platform_data* null, %struct.mmc_spi_platform_data** %2, align 8
  br label %73

29:                                               ; preds = %23
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %32 = getelementptr inbounds %struct.of_mmc_spi, %struct.of_mmc_spi* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.mmc_spi_platform_data, %struct.mmc_spi_platform_data* %32, i32 0, i32 3
  %34 = call i64 @mmc_of_parse_voltage(%struct.device_node* %30, i32* %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %70

37:                                               ; preds = %29
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i64 @irq_of_parse_and_map(%struct.device_node* %38, i32 0)
  %40 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %41 = getelementptr inbounds %struct.of_mmc_spi, %struct.of_mmc_spi* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %43 = getelementptr inbounds %struct.of_mmc_spi, %struct.of_mmc_spi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load i32, i32* @of_mmc_spi_init, align 4
  %48 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %49 = getelementptr inbounds %struct.of_mmc_spi, %struct.of_mmc_spi* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.mmc_spi_platform_data, %struct.mmc_spi_platform_data* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @of_mmc_spi_exit, align 4
  %52 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %53 = getelementptr inbounds %struct.of_mmc_spi, %struct.of_mmc_spi* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.mmc_spi_platform_data, %struct.mmc_spi_platform_data* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  br label %62

55:                                               ; preds = %37
  %56 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %57 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %58 = getelementptr inbounds %struct.of_mmc_spi, %struct.of_mmc_spi* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.mmc_spi_platform_data, %struct.mmc_spi_platform_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %46
  %63 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %64 = getelementptr inbounds %struct.of_mmc_spi, %struct.of_mmc_spi* %63, i32 0, i32 1
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  store %struct.mmc_spi_platform_data* %64, %struct.mmc_spi_platform_data** %66, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load %struct.mmc_spi_platform_data*, %struct.mmc_spi_platform_data** %68, align 8
  store %struct.mmc_spi_platform_data* %69, %struct.mmc_spi_platform_data** %2, align 8
  br label %73

70:                                               ; preds = %36
  %71 = load %struct.of_mmc_spi*, %struct.of_mmc_spi** %6, align 8
  %72 = call i32 @kfree(%struct.of_mmc_spi* %71)
  store %struct.mmc_spi_platform_data* null, %struct.mmc_spi_platform_data** %2, align 8
  br label %73

73:                                               ; preds = %70, %62, %28, %19
  %74 = load %struct.mmc_spi_platform_data*, %struct.mmc_spi_platform_data** %2, align 8
  ret %struct.mmc_spi_platform_data* %74
}

declare dso_local %struct.of_mmc_spi* @kzalloc(i32, i32) #1

declare dso_local i64 @mmc_of_parse_voltage(%struct.device_node*, i32*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @kfree(%struct.of_mmc_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
