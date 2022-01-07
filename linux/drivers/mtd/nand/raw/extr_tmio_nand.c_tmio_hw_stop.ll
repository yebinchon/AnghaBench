; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tmio_nand = type { i64 }
%struct.mfd_cell = type { i32 (%struct.platform_device*)* }

@FCR_MODE_POWER_OFF = common dso_local global i32 0, align 4
@FCR_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.tmio_nand*)* @tmio_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_hw_stop(%struct.platform_device* %0, %struct.tmio_nand* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tmio_nand*, align 8
  %5 = alloca %struct.mfd_cell*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.tmio_nand* %1, %struct.tmio_nand** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %6)
  store %struct.mfd_cell* %7, %struct.mfd_cell** %5, align 8
  %8 = load i32, i32* @FCR_MODE_POWER_OFF, align 4
  %9 = load %struct.tmio_nand*, %struct.tmio_nand** %4, align 8
  %10 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FCR_MODE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @tmio_iowrite8(i32 %8, i64 %13)
  %15 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %16 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %15, i32 0, i32 0
  %17 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %16, align 8
  %18 = icmp ne i32 (%struct.platform_device*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %21 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %20, i32 0, i32 0
  %22 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %21, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 %22(%struct.platform_device* %23)
  br label %25

25:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
