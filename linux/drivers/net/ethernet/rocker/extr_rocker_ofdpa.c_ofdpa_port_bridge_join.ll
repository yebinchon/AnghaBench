; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { %struct.net_device*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@OFDPA_UNTAGGED_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, %struct.net_device*)* @ofdpa_port_bridge_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_bridge_join(%struct.ofdpa_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %8 = load i32, i32* @OFDPA_UNTAGGED_VID, align 4
  %9 = call i32 @ofdpa_port_vlan_del(%struct.ofdpa_port* %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %16 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %17 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ofdpa_port_internal_vlan_id_put(%struct.ofdpa_port* %15, i32 %20)
  %22 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ofdpa_port_internal_vlan_id_get(%struct.ofdpa_port* %22, i32 %25)
  %27 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %28 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %31 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %30, i32 0, i32 0
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %33 = load i32, i32* @OFDPA_UNTAGGED_VID, align 4
  %34 = call i32 @ofdpa_port_vlan_add(%struct.ofdpa_port* %32, i32 %33, i32 0)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %14, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ofdpa_port_vlan_del(%struct.ofdpa_port*, i32, i32) #1

declare dso_local i32 @ofdpa_port_internal_vlan_id_put(%struct.ofdpa_port*, i32) #1

declare dso_local i32 @ofdpa_port_internal_vlan_id_get(%struct.ofdpa_port*, i32) #1

declare dso_local i32 @ofdpa_port_vlan_add(%struct.ofdpa_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
