; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_event_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_event_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32, i32, %struct.vio_driver_state }
%struct.vio_driver_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HV_INTR_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunvnet_event_common(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnet_port*, align 8
  %6 = alloca %struct.vio_driver_state*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.vnet_port*
  store %struct.vnet_port* %8, %struct.vnet_port** %5, align 8
  %9 = load %struct.vnet_port*, %struct.vnet_port** %5, align 8
  %10 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %9, i32 0, i32 2
  store %struct.vio_driver_state* %10, %struct.vio_driver_state** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.vnet_port*, %struct.vnet_port** %5, align 8
  %13 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.vio_driver_state*, %struct.vio_driver_state** %6, align 8
  %17 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HV_INTR_DISABLED, align 4
  %22 = call i32 @vio_set_intr(i32 %20, i32 %21)
  %23 = load %struct.vnet_port*, %struct.vnet_port** %5, align 8
  %24 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %23, i32 0, i32 1
  %25 = call i32 @napi_schedule(i32* %24)
  ret void
}

declare dso_local i32 @vio_set_intr(i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
