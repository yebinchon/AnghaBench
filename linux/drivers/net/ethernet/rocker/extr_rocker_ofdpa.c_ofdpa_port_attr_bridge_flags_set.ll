; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_attr_bridge_flags_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_attr_bridge_flags_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.ofdpa_port* }
%struct.ofdpa_port = type { i64, i32 }
%struct.switchdev_trans = type { i32 }

@BR_LEARNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, i64, %struct.switchdev_trans*)* @ofdpa_port_attr_bridge_flags_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_attr_bridge_flags_set(%struct.rocker_port* %0, i64 %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca %struct.rocker_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca %struct.ofdpa_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %6, align 8
  %10 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %11 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %10, i32 0, i32 0
  %12 = load %struct.ofdpa_port*, %struct.ofdpa_port** %11, align 8
  store %struct.ofdpa_port* %12, %struct.ofdpa_port** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %14 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %18 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %21 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = xor i64 %19, %22
  %24 = load i64, i64* @BR_LEARNING, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %3
  %28 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %29 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %33 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %36 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BR_LEARNING, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @rocker_port_set_learning(i32 %34, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %31, %27, %3
  %46 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %47 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %52 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @rocker_port_set_learning(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
