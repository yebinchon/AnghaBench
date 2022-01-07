; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_pre_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32, i32, %struct.TYPE_2__*, %struct.ofdpa_port* }
%struct.TYPE_2__ = type { i32 }
%struct.ofdpa_port = type { i32, i32, i32, i32, %struct.rocker_port*, i32 }

@BR_LEARNING = common dso_local global i32 0, align 4
@BR_DEFAULT_AGEING_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*)* @ofdpa_port_pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_pre_init(%struct.rocker_port* %0) #0 {
  %2 = alloca %struct.rocker_port*, align 8
  %3 = alloca %struct.ofdpa_port*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %2, align 8
  %4 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %5 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %4, i32 0, i32 3
  %6 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  store %struct.ofdpa_port* %6, %struct.ofdpa_port** %3, align 8
  %7 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %8 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %13 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %15 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %16 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %15, i32 0, i32 4
  store %struct.rocker_port* %14, %struct.rocker_port** %16, align 8
  %17 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %18 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %21 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %23 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %26 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @BR_LEARNING, align 4
  %28 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %29 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @BR_DEFAULT_AGEING_TIME, align 4
  %31 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %32 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
