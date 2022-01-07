; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_attr_bridge_ageing_time_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_attr_bridge_ageing_time_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.ofdpa_port* }
%struct.ofdpa_port = type { i64, %struct.ofdpa* }
%struct.ofdpa = type { i64, i32 }
%struct.switchdev_trans = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, i32, %struct.switchdev_trans*)* @ofdpa_port_attr_bridge_ageing_time_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_attr_bridge_ageing_time_set(%struct.rocker_port* %0, i32 %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca %struct.rocker_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca %struct.ofdpa_port*, align 8
  %8 = alloca %struct.ofdpa*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %6, align 8
  %9 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %10 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %9, i32 0, i32 0
  %11 = load %struct.ofdpa_port*, %struct.ofdpa_port** %10, align 8
  store %struct.ofdpa_port* %11, %struct.ofdpa_port** %7, align 8
  %12 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %13 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %12, i32 0, i32 1
  %14 = load %struct.ofdpa*, %struct.ofdpa** %13, align 8
  store %struct.ofdpa* %14, %struct.ofdpa** %8, align 8
  %15 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %16 = call i32 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @clock_t_to_jiffies(i32 %19)
  %21 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %22 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %24 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ofdpa*, %struct.ofdpa** %8, align 8
  %27 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %32 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ofdpa*, %struct.ofdpa** %8, align 8
  %35 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %18
  %37 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %38 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %37, i32 0, i32 1
  %39 = load %struct.ofdpa*, %struct.ofdpa** %38, align 8
  %40 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %39, i32 0, i32 1
  %41 = load i32, i32* @jiffies, align 4
  %42 = call i32 @mod_timer(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %3
  ret i32 0
}

declare dso_local i32 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i64 @clock_t_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
