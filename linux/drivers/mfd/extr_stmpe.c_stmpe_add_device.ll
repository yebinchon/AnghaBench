; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mfd_cell = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, %struct.mfd_cell*)* @stmpe_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_add_device(%struct.stmpe* %0, %struct.mfd_cell* %1) #0 {
  %3 = alloca %struct.stmpe*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  store %struct.stmpe* %0, %struct.stmpe** %3, align 8
  store %struct.mfd_cell* %1, %struct.mfd_cell** %4, align 8
  %5 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %6 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %9 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %14 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %15 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mfd_add_devices(i32 %7, i32 %12, %struct.mfd_cell* %13, i32 1, i32* null, i32 0, i32 %16)
  ret i32 %17
}

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.mfd_cell*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
