; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.ofdpa_port* }
%struct.ofdpa_port = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BR_LEARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"install ig port table failed\0A\00", align 1
@OFDPA_UNTAGGED_VID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"install untagged VLAN failed\0A\00", align 1
@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*)* @ofdpa_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_init(%struct.rocker_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  %6 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %7 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %6, i32 0, i32 0
  %8 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  store %struct.ofdpa_port* %8, %struct.ofdpa_port** %4, align 8
  %9 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %10 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %11 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BR_LEARNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @rocker_port_set_learning(%struct.rocker_port* %9, i32 %18)
  %20 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %21 = call i32 @ofdpa_port_ig_tbl(%struct.ofdpa_port* %20, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %26 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @netdev_err(%struct.TYPE_2__* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %32 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %33 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ofdpa_port_internal_vlan_id_get(%struct.ofdpa_port* %31, i32 %36)
  %38 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %39 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %41 = load i32, i32* @OFDPA_UNTAGGED_VID, align 4
  %42 = call i32 @ofdpa_port_vlan_add(%struct.ofdpa_port* %40, i32 %41, i32 0)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %47 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @netdev_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %51

50:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %45
  %52 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %53 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %54 = call i32 @ofdpa_port_ig_tbl(%struct.ofdpa_port* %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %50, %24
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @rocker_port_set_learning(%struct.rocker_port*, i32) #1

declare dso_local i32 @ofdpa_port_ig_tbl(%struct.ofdpa_port*, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @ofdpa_port_internal_vlan_id_get(%struct.ofdpa_port*, i32) #1

declare dso_local i32 @ofdpa_port_vlan_add(%struct.ofdpa_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
