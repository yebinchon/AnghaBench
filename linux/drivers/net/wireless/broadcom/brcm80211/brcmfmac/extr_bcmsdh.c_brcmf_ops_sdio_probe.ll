; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_ops_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_ops_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, %struct.device, %struct.TYPE_4__*, i32, i32, i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.sdio_device_id = type { i32 }
%struct.brcmf_sdio_dev = type { %struct.TYPE_6__*, %struct.device*, i32, %struct.TYPE_5__, %struct.brcmf_sdio_dev*, %struct.sdio_func* }
%struct.TYPE_5__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_bus = type { %struct.TYPE_6__*, %struct.device*, i32, %struct.TYPE_5__, %struct.brcmf_bus*, %struct.sdio_func* }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Class=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"sdio vendor ID: 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"sdio device ID: 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Function#: %d\0A\00", align 1
@MMC_QUIRK_LENIENT_FN0 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_PROTO_BCDC = common dso_local global i32 0, align 4
@BRCMF_SDIOD_DOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"F2 found, calling brcmf_sdiod_probe...\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"F2 error, probe failed %d...\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"F2 init completed...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @brcmf_ops_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_ops_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_sdio_dev*, align 8
  %8 = alloca %struct.brcmf_bus*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %10 = load i32, i32* @SDIO, align 4
  %11 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SDIO, align 4
  %13 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SDIO, align 4
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @SDIO, align 4
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @SDIO, align 4
  %28 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %29 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 1
  store %struct.device* %33, %struct.device** %9, align 8
  %34 = load i32, i32* @MMC_QUIRK_LENIENT_FN0, align 4
  %35 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %36 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 8
  %41 = load %struct.device*, %struct.device** %9, align 8
  %42 = call i32 @brcmf_sdiod_acpi_set_power_manageable(%struct.device* %41, i32 0)
  %43 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %44 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

48:                                               ; preds = %2
  %49 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %50 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %148

56:                                               ; preds = %48
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.brcmf_sdio_dev* @kzalloc(i32 48, i32 %57)
  %59 = bitcast %struct.brcmf_sdio_dev* %58 to %struct.brcmf_bus*
  store %struct.brcmf_bus* %59, %struct.brcmf_bus** %8, align 8
  %60 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %61 = icmp ne %struct.brcmf_bus* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %148

65:                                               ; preds = %56
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.brcmf_sdio_dev* @kzalloc(i32 48, i32 %66)
  store %struct.brcmf_sdio_dev* %67, %struct.brcmf_sdio_dev** %7, align 8
  %68 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %69 = icmp ne %struct.brcmf_sdio_dev* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %72 = bitcast %struct.brcmf_bus* %71 to %struct.brcmf_sdio_dev*
  %73 = call i32 @kfree(%struct.brcmf_sdio_dev* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %148

76:                                               ; preds = %65
  %77 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %78 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %85 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %84, i32 0, i32 0
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %85, align 8
  %86 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %87 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %88 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %87, i32 0, i32 5
  store %struct.sdio_func* %86, %struct.sdio_func** %88, align 8
  %89 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %90 = bitcast %struct.brcmf_bus* %89 to %struct.brcmf_sdio_dev*
  %91 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %92 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %91, i32 0, i32 4
  store %struct.brcmf_sdio_dev* %90, %struct.brcmf_sdio_dev** %92, align 8
  %93 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %94 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %95 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store %struct.brcmf_sdio_dev* %93, %struct.brcmf_sdio_dev** %96, align 8
  %97 = load i32, i32* @BRCMF_PROTO_BCDC, align 4
  %98 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %99 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %101 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %100, i32 0, i32 1
  %102 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %103 = bitcast %struct.brcmf_bus* %102 to %struct.brcmf_sdio_dev*
  %104 = call i32 @dev_set_drvdata(%struct.device* %101, %struct.brcmf_sdio_dev* %103)
  %105 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %106 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %110 = bitcast %struct.brcmf_bus* %109 to %struct.brcmf_sdio_dev*
  %111 = call i32 @dev_set_drvdata(%struct.device* %108, %struct.brcmf_sdio_dev* %110)
  %112 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %113 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %117 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %116, i32 0, i32 1
  store %struct.device* %115, %struct.device** %117, align 8
  %118 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %119 = load i32, i32* @BRCMF_SDIOD_DOWN, align 4
  %120 = call i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev* %118, i32 %119)
  %121 = load i32, i32* @SDIO, align 4
  %122 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %124 = call i32 @brcmf_sdiod_probe(%struct.brcmf_sdio_dev* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %76
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @brcmf_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %133

130:                                              ; preds = %76
  %131 = load i32, i32* @SDIO, align 4
  %132 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

133:                                              ; preds = %127
  %134 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %135 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %134, i32 0, i32 1
  %136 = call i32 @dev_set_drvdata(%struct.device* %135, %struct.brcmf_sdio_dev* null)
  %137 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %138 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = call i32 @dev_set_drvdata(%struct.device* %140, %struct.brcmf_sdio_dev* null)
  %142 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %143 = call i32 @kfree(%struct.brcmf_sdio_dev* %142)
  %144 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %145 = bitcast %struct.brcmf_bus* %144 to %struct.brcmf_sdio_dev*
  %146 = call i32 @kfree(%struct.brcmf_sdio_dev* %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %133, %130, %70, %62, %53, %47
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_acpi_set_power_manageable(%struct.device*, i32) #1

declare dso_local %struct.brcmf_sdio_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.brcmf_sdio_dev*) #1

declare dso_local i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev*, i32) #1

declare dso_local i32 @brcmf_sdiod_probe(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
