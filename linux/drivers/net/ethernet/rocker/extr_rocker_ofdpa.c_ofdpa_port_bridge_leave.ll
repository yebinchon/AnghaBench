; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@OFDPA_UNTAGGED_VID = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*)* @ofdpa_port_bridge_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_bridge_leave(%struct.ofdpa_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ofdpa_port*, align 8
  %4 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %3, align 8
  %5 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %6 = load i32, i32* @OFDPA_UNTAGGED_VID, align 4
  %7 = call i32 @ofdpa_port_vlan_del(%struct.ofdpa_port* %5, i32 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %14 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %15 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ofdpa_port_internal_vlan_id_put(%struct.ofdpa_port* %13, i32 %18)
  %20 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %21 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %22 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ofdpa_port_internal_vlan_id_get(%struct.ofdpa_port* %20, i32 %25)
  %27 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %28 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %30 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %29, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %32 = load i32, i32* @OFDPA_UNTAGGED_VID, align 4
  %33 = call i32 @ofdpa_port_vlan_add(%struct.ofdpa_port* %31, i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %12
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %12
  %39 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %40 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_UP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %49 = call i32 @ofdpa_port_fwd_enable(%struct.ofdpa_port* %48, i32 0)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %36, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ofdpa_port_vlan_del(%struct.ofdpa_port*, i32, i32) #1

declare dso_local i32 @ofdpa_port_internal_vlan_id_put(%struct.ofdpa_port*, i32) #1

declare dso_local i32 @ofdpa_port_internal_vlan_id_get(%struct.ofdpa_port*, i32) #1

declare dso_local i32 @ofdpa_port_vlan_add(%struct.ofdpa_port*, i32, i32) #1

declare dso_local i32 @ofdpa_port_fwd_enable(%struct.ofdpa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
