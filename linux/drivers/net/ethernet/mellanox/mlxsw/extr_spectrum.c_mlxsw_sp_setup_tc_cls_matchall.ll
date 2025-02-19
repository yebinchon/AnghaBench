; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_cls_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_cls_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.tc_cls_matchall_offload = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.tc_cls_matchall_offload*, i32)* @mlxsw_sp_setup_tc_cls_matchall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_setup_tc_cls_matchall(%struct.mlxsw_sp_port* %0, %struct.tc_cls_matchall_offload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.tc_cls_matchall_offload*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %9 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %20 [
    i32 128, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %3
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %13 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mlxsw_sp_port_add_cls_matchall(%struct.mlxsw_sp_port* %12, %struct.tc_cls_matchall_offload* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %18 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %19 = call i32 @mlxsw_sp_port_del_cls_matchall(%struct.mlxsw_sp_port* %17, %struct.tc_cls_matchall_offload* %18)
  store i32 0, i32* %4, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %16, %11
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @mlxsw_sp_port_add_cls_matchall(%struct.mlxsw_sp_port*, %struct.tc_cls_matchall_offload*, i32) #1

declare dso_local i32 @mlxsw_sp_port_del_cls_matchall(%struct.mlxsw_sp_port*, %struct.tc_cls_matchall_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
