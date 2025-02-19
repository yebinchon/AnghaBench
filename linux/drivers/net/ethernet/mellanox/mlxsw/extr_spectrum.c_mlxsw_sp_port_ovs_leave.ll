; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_ovs_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_ovs_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }

@VLAN_N_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_ovs_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_ovs_leave(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %2, align 8
  %4 = load i32, i32* @VLAN_N_VID, align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %13, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %10, i32 %11, i32 1)
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %18 = load i32, i32* @VLAN_N_VID, align 4
  %19 = sub nsw i32 %18, 2
  %20 = call i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port* %17, i32 1, i32 %19, i32 0, i32 0)
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %22 = call i32 @mlxsw_sp_port_stp_set(%struct.mlxsw_sp_port* %21, i32 0)
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %24 = call i32 @mlxsw_sp_port_vp_mode_set(%struct.mlxsw_sp_port* %23, i32 0)
  ret void
}

declare dso_local i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_stp_set(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_vp_mode_set(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
