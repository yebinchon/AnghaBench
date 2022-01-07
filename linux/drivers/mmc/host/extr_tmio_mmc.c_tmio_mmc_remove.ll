; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mfd_cell = type { i32 (%struct.platform_device*)* }
%struct.tmio_mmc_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmio_mmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_mmc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mfd_cell*, align 8
  %4 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %5)
  store %struct.mfd_cell* %6, %struct.mfd_cell** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.tmio_mmc_host* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.tmio_mmc_host* %8, %struct.tmio_mmc_host** %4, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %10 = call i32 @tmio_mmc_host_remove(%struct.tmio_mmc_host* %9)
  %11 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %12 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 0
  %13 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %12, align 8
  %14 = icmp ne i32 (%struct.platform_device*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %17 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %16, i32 0, i32 0
  %18 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %17, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = call i32 %18(%struct.platform_device* %19)
  br label %21

21:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local %struct.tmio_mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tmio_mmc_host_remove(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
