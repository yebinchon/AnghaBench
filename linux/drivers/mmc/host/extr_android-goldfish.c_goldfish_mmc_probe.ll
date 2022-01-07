; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.goldfish_mmc_host = type { i64, i32, i32, i32*, i32*, i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mmc: Mapping %lX to %lX\0A\00", align 1
@BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@goldfish_mmc_ops = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@goldfish_mmc_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed IRQ Adding goldfish MMC\0A\00", align 1
@dev_attr_cover_switch = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to create sysfs attributes\0A\00", align 1
@MMC_SET_BUFFER = common dso_local global i32 0, align 4
@MMC_INT_ENABLE = common dso_local global i32 0, align 4
@MMC_STAT_END_OF_CMD = common dso_local global i32 0, align 4
@MMC_STAT_END_OF_DATA = common dso_local global i32 0, align 4
@MMC_STAT_STATE_CHANGE = common dso_local global i32 0, align 4
@MMC_STAT_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_mmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_mmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.goldfish_mmc_host*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.goldfish_mmc_host* null, %struct.goldfish_mmc_host** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  %16 = icmp eq %struct.resource* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %182

23:                                               ; preds = %17
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.mmc_host* @mmc_alloc_host(i32 40, i32* %25)
  store %struct.mmc_host* %26, %struct.mmc_host** %4, align 8
  %27 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %28 = icmp eq %struct.mmc_host* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %180

32:                                               ; preds = %23
  %33 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %34 = call %struct.goldfish_mmc_host* @mmc_priv(%struct.mmc_host* %33)
  store %struct.goldfish_mmc_host* %34, %struct.goldfish_mmc_host** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40)
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = call i32 @resource_size(%struct.resource* %45)
  %47 = call i32* @ioremap(i64 %44, i32 %46)
  %48 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %49 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %51 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %177

57:                                               ; preds = %32
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* @BUFFER_SIZE, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i64 @dma_alloc_coherent(i32* %59, i32 %60, i32* %9, i32 %61)
  %63 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %64 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %66 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %172

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %75 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %80 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %83 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 9
  store i32* @goldfish_mmc_ops, i32** %85, align 8
  %86 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %86, i32 0, i32 0
  store i32 400000, i32* %87, align 8
  %88 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %88, i32 0, i32 1
  store i32 24000000, i32* %89, align 4
  %90 = load i32, i32* @MMC_VDD_32_33, align 4
  %91 = load i32, i32* @MMC_VDD_33_34, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %94 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %96 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %97 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %98, i32 0, i32 3
  store i32 32, i32* %99, align 4
  %100 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %100, i32 0, i32 4
  store i32 2048, i32* %101, align 8
  %102 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %103 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %102, i32 0, i32 5
  store i32 2048, i32* %103, align 4
  %104 = load i32, i32* @BUFFER_SIZE, align 4
  %105 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %106 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %113 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @goldfish_mmc_irq, align 4
  %116 = load i32, i32* @DRIVER_NAME, align 4
  %117 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %118 = call i32 @request_irq(i32 %114, i32 %115, i32 0, i32 %116, %struct.goldfish_mmc_host* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %72
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %161

125:                                              ; preds = %72
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %129 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %128, i32 0, i32 4
  store i32* %127, i32** %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %132 = call i32 @platform_set_drvdata(%struct.platform_device* %130, %struct.goldfish_mmc_host* %131)
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @device_create_file(i32* %134, i32* @dev_attr_cover_switch)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %125
  %139 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %140 = call i32 @mmc_dev(%struct.mmc_host* %139)
  %141 = call i32 @dev_warn(i32 %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %125
  %143 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %144 = load i32, i32* @MMC_SET_BUFFER, align 4
  %145 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %146 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %143, i32 %144, i32 %147)
  %149 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %150 = load i32, i32* @MMC_INT_ENABLE, align 4
  %151 = load i32, i32* @MMC_STAT_END_OF_CMD, align 4
  %152 = load i32, i32* @MMC_STAT_END_OF_DATA, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @MMC_STAT_STATE_CHANGE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @MMC_STAT_CMD_TIMEOUT, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %149, i32 %150, i32 %157)
  %159 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %160 = call i32 @mmc_add_host(%struct.mmc_host* %159)
  store i32 0, i32* %2, align 4
  br label %182

161:                                              ; preds = %121
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load i32, i32* @BUFFER_SIZE, align 4
  %165 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %166 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %169 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dma_free_coherent(i32* %163, i32 %164, i64 %167, i32 %170)
  br label %172

172:                                              ; preds = %161, %69
  %173 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %174 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @iounmap(i32* %175)
  br label %177

177:                                              ; preds = %172, %54
  %178 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %179 = call i32 @mmc_free_host(%struct.mmc_host* %178)
  br label %180

180:                                              ; preds = %177, %29
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %180, %142, %20
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local %struct.goldfish_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.goldfish_mmc_host*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.goldfish_mmc_host*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host*, i32, i32) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
