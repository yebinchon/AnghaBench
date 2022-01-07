; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fimc_is_load_firmware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*, i8*)* @fimc_is_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_request_firmware(%struct.fimc_is* %0, i8* %1) #0 {
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca i8*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @THIS_MODULE, align 4
  %6 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %14 = load i32, i32* @fimc_is_load_firmware, align 4
  %15 = call i32 @request_firmware_nowait(i32 %5, i32 %6, i8* %7, i32* %11, i32 %12, %struct.fimc_is* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, %struct.fimc_is*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
