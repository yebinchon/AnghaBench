; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_msic.c_intel_msic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_msic.c_intel_msic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_msic_platform_data = type { i32 }
%struct.intel_msic = type { i64, i32, i32, %struct.platform_device* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"no platform data passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTEL_MSIC_ID0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to identify the MSIC chip (ID0)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTEL_MSIC_ID1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to identify the MSIC chip (ID1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid vendor ID: %x, %x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to initialize MSIC devices\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Intel MSIC version %c%d (vendor %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_msic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_msic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_msic_platform_data*, align 8
  %5 = alloca %struct.intel_msic*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.intel_msic_platform_data* @dev_get_platdata(i32* %11)
  store %struct.intel_msic_platform_data* %12, %struct.intel_msic_platform_data** %4, align 8
  %13 = load %struct.intel_msic_platform_data*, %struct.intel_msic_platform_data** %4, align 8
  %14 = icmp ne %struct.intel_msic_platform_data* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %126

21:                                               ; preds = %1
  %22 = load i32, i32* @INTEL_MSIC_ID0, align 4
  %23 = call i32 @intel_scu_ipc_ioread8(i32 %22, i32* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %126

32:                                               ; preds = %21
  %33 = load i32, i32* @INTEL_MSIC_ID1, align 4
  %34 = call i32 @intel_scu_ipc_ioread8(i32 %33, i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %126

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @MSIC_VENDOR(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @MSIC_VENDOR(i32 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %126

57:                                               ; preds = %43
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.intel_msic* @devm_kzalloc(i32* %59, i32 24, i32 %60)
  store %struct.intel_msic* %61, %struct.intel_msic** %5, align 8
  %62 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %63 = icmp ne %struct.intel_msic* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %126

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @MSIC_VENDOR(i32 %68)
  %70 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %71 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @MSIC_VERSION(i32 %72)
  %74 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %75 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %78 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %77, i32 0, i32 3
  store %struct.platform_device* %76, %struct.platform_device** %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = call %struct.resource* @platform_get_resource(%struct.platform_device* %79, i32 %80, i32 0)
  store %struct.resource* %81, %struct.resource** %6, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.resource*, %struct.resource** %6, align 8
  %85 = call i32 @devm_ioremap_resource(i32* %83, %struct.resource* %84)
  %86 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %87 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %89 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IS_ERR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %67
  %94 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %95 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @PTR_ERR(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %126

98:                                               ; preds = %67
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.intel_msic* %100)
  %102 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %103 = call i32 @intel_msic_init_devices(%struct.intel_msic* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %126

111:                                              ; preds = %98
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %115 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @MSIC_MAJOR(i32 %116)
  %118 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %119 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @MSIC_MINOR(i32 %120)
  %122 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %123 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dev_info(i32* %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %121, i64 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %111, %106, %93, %64, %49, %37, %26, %15
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.intel_msic_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @intel_scu_ipc_ioread8(i32, i32*) #1

declare dso_local i64 @MSIC_VENDOR(i32) #1

declare dso_local %struct.intel_msic* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @MSIC_VERSION(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.intel_msic*) #1

declare dso_local i32 @intel_msic_init_devices(%struct.intel_msic*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @MSIC_MAJOR(i32) #1

declare dso_local i32 @MSIC_MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
