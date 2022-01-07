; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/hyperbus/extr_hyperbus-core.c_hyperbus_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/hyperbus/extr_hyperbus-core.c_hyperbus_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.hyperbus_device = type { %struct.hyperbus_ctlr* }
%struct.hyperbus_ctlr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hyperbus_device*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.map_info*, i64)* @hyperbus_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hyperbus_read16(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hyperbus_device*, align 8
  %7 = alloca %struct.hyperbus_ctlr*, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.map_info*, %struct.map_info** %4, align 8
  %9 = call %struct.hyperbus_device* @map_to_hbdev(%struct.map_info* %8)
  store %struct.hyperbus_device* %9, %struct.hyperbus_device** %6, align 8
  %10 = load %struct.hyperbus_device*, %struct.hyperbus_device** %6, align 8
  %11 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %10, i32 0, i32 0
  %12 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %11, align 8
  store %struct.hyperbus_ctlr* %12, %struct.hyperbus_ctlr** %7, align 8
  %13 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %7, align 8
  %14 = getelementptr inbounds %struct.hyperbus_ctlr, %struct.hyperbus_ctlr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.hyperbus_device*, i64)*, i32 (%struct.hyperbus_device*, i64)** %16, align 8
  %18 = load %struct.hyperbus_device*, %struct.hyperbus_device** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 %17(%struct.hyperbus_device* %18, i64 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  ret i32* %25
}

declare dso_local %struct.hyperbus_device* @map_to_hbdev(%struct.map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
