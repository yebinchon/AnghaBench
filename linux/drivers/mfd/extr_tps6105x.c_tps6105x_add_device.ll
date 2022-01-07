; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6105x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mfd_cell = type { i32, %struct.tps6105x* }

@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6105x*, %struct.mfd_cell*)* @tps6105x_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6105x_add_device(%struct.tps6105x* %0, %struct.mfd_cell* %1) #0 {
  %3 = alloca %struct.tps6105x*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  store %struct.tps6105x* %0, %struct.tps6105x** %3, align 8
  store %struct.mfd_cell* %1, %struct.mfd_cell** %4, align 8
  %5 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %6 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %7 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %6, i32 0, i32 1
  store %struct.tps6105x* %5, %struct.tps6105x** %7, align 8
  %8 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %9 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %8, i32 0, i32 0
  store i32 8, i32* %9, align 8
  %10 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %11 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %15 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %16 = call i32 @mfd_add_devices(i32* %13, i32 %14, %struct.mfd_cell* %15, i32 1, i32* null, i32 0, i32* null)
  ret i32 %16
}

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
