; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_pci_ms.c_rtsx_pci_ms_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_pci_ms.c_rtsx_pci_ms_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pcr_handle* }
%struct.pcr_handle = type { %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.platform_device* }
%struct.memstick_host = type { i32, i32, i32 }
%struct.realtek_pci_ms = type { i32, i32, %struct.platform_device*, %struct.memstick_host*, %struct.rtsx_pcr* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c": Realtek PCI-E Memstick controller found\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RTSX_MS_CARD = common dso_local global i64 0, align 8
@rtsx_pci_ms_card_event = common dso_local global i32 0, align 4
@rtsx_pci_ms_handle_req = common dso_local global i32 0, align 4
@rtsx_pci_ms_request = common dso_local global i32 0, align 4
@rtsx_pci_ms_set_param = common dso_local global i32 0, align 4
@MEMSTICK_CAP_PAR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtsx_pci_ms_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_pci_ms_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.memstick_host*, align 8
  %5 = alloca %struct.realtek_pci_ms*, align 8
  %6 = alloca %struct.rtsx_pcr*, align 8
  %7 = alloca %struct.pcr_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.pcr_handle*, %struct.pcr_handle** %11, align 8
  store %struct.pcr_handle* %12, %struct.pcr_handle** %7, align 8
  %13 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %14 = icmp ne %struct.pcr_handle* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %93

18:                                               ; preds = %1
  %19 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %20 = getelementptr inbounds %struct.pcr_handle, %struct.pcr_handle* %19, i32 0, i32 0
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %20, align 8
  store %struct.rtsx_pcr* %21, %struct.rtsx_pcr** %6, align 8
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %23 = icmp ne %struct.rtsx_pcr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %93

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call %struct.memstick_host* @memstick_alloc_host(i32 32, %struct.TYPE_5__* %32)
  store %struct.memstick_host* %33, %struct.memstick_host** %4, align 8
  %34 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %35 = icmp ne %struct.memstick_host* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %93

39:                                               ; preds = %27
  %40 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %41 = call %struct.realtek_pci_ms* @memstick_priv(%struct.memstick_host* %40)
  store %struct.realtek_pci_ms* %41, %struct.realtek_pci_ms** %5, align 8
  %42 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %43 = load %struct.realtek_pci_ms*, %struct.realtek_pci_ms** %5, align 8
  %44 = getelementptr inbounds %struct.realtek_pci_ms, %struct.realtek_pci_ms* %43, i32 0, i32 4
  store %struct.rtsx_pcr* %42, %struct.rtsx_pcr** %44, align 8
  %45 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %46 = load %struct.realtek_pci_ms*, %struct.realtek_pci_ms** %5, align 8
  %47 = getelementptr inbounds %struct.realtek_pci_ms, %struct.realtek_pci_ms* %46, i32 0, i32 3
  store %struct.memstick_host* %45, %struct.memstick_host** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.realtek_pci_ms*, %struct.realtek_pci_ms** %5, align 8
  %50 = getelementptr inbounds %struct.realtek_pci_ms, %struct.realtek_pci_ms* %49, i32 0, i32 2
  store %struct.platform_device* %48, %struct.platform_device** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.realtek_pci_ms*, %struct.realtek_pci_ms** %5, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.realtek_pci_ms* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %56 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* @RTSX_MS_CARD, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store %struct.platform_device* %54, %struct.platform_device** %60, align 8
  %61 = load i32, i32* @rtsx_pci_ms_card_event, align 4
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %63 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* @RTSX_MS_CARD, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 8
  %68 = load %struct.realtek_pci_ms*, %struct.realtek_pci_ms** %5, align 8
  %69 = getelementptr inbounds %struct.realtek_pci_ms, %struct.realtek_pci_ms* %68, i32 0, i32 1
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.realtek_pci_ms*, %struct.realtek_pci_ms** %5, align 8
  %72 = getelementptr inbounds %struct.realtek_pci_ms, %struct.realtek_pci_ms* %71, i32 0, i32 0
  %73 = load i32, i32* @rtsx_pci_ms_handle_req, align 4
  %74 = call i32 @INIT_WORK(i32* %72, i32 %73)
  %75 = load i32, i32* @rtsx_pci_ms_request, align 4
  %76 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %77 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @rtsx_pci_ms_set_param, align 4
  %79 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %80 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @MEMSTICK_CAP_PAR4, align 4
  %82 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %83 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %85 = call i32 @memstick_add_host(%struct.memstick_host* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %39
  %89 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %90 = call i32 @memstick_free_host(%struct.memstick_host* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %88, %36, %24, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.memstick_host* @memstick_alloc_host(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.realtek_pci_ms* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.realtek_pci_ms*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memstick_add_host(%struct.memstick_host*) #1

declare dso_local i32 @memstick_free_host(%struct.memstick_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
