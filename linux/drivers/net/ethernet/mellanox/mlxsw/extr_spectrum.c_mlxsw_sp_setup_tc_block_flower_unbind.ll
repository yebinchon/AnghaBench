; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_block_flower_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_block_flower_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32*, i32*, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.flow_block_offload = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.flow_block_cb = type { i32 }

@mlxsw_sp_setup_tc_block_cb_flower = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.flow_block_offload*, i32)* @mlxsw_sp_setup_tc_block_flower_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_setup_tc_block_flower_unbind(%struct.mlxsw_sp_port* %0, %struct.flow_block_offload* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.flow_block_offload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %9 = alloca %struct.flow_block_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.flow_block_offload* %1, %struct.flow_block_offload** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 2
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %7, align 8
  %14 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %15 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @mlxsw_sp_setup_tc_block_cb_flower, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %19 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %16, i32 %17, %struct.mlxsw_sp* %18)
  store %struct.flow_block_cb* %19, %struct.flow_block_cb** %9, align 8
  %20 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %21 = icmp ne %struct.flow_block_cb* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %53

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %34 = call %struct.mlxsw_sp_acl_block* @flow_block_cb_priv(%struct.flow_block_cb* %33)
  store %struct.mlxsw_sp_acl_block* %34, %struct.mlxsw_sp_acl_block** %8, align 8
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %36 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %37 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mlxsw_sp_acl_block_unbind(%struct.mlxsw_sp* %35, %struct.mlxsw_sp_acl_block* %36, %struct.mlxsw_sp_port* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %32
  %43 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %44 = call i32 @flow_block_cb_decref(%struct.flow_block_cb* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %48 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %49 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %47, %struct.flow_block_offload* %48)
  %50 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %51 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %50, i32 0, i32 0
  %52 = call i32 @list_del(i32* %51)
  br label %53

53:                                               ; preds = %22, %46, %42, %32
  ret void
}

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32, %struct.mlxsw_sp*) #1

declare dso_local %struct.mlxsw_sp_acl_block* @flow_block_cb_priv(%struct.flow_block_cb*) #1

declare dso_local i32 @mlxsw_sp_acl_block_unbind(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @flow_block_cb_decref(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
