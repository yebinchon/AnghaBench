; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_update_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_update_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.fs_fte = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mailbox_mod = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)* }

@MLX5_FLOW_CONTEXT_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*, i32)* @fpga_ipsec_fs_update_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_ipsec_fs_update_fte(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.mlx5_flow_group* %2, i32 %3, %struct.fs_fte* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %9 = alloca %struct.mlx5_flow_table*, align 8
  %10 = alloca %struct.mlx5_flow_group*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fs_fte*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)*, align 8
  %15 = alloca %struct.mlx5_core_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mailbox_mod, align 4
  %18 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %8, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %9, align 8
  store %struct.mlx5_flow_group* %2, %struct.mlx5_flow_group** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.fs_fte* %4, %struct.fs_fte** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @egress_to_fs_ft(i32 %19)
  %21 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)** %22, align 8
  store i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)* %23, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)** %14, align 8
  %24 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %24, i32 0, i32 0
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %25, align 8
  store %struct.mlx5_core_dev* %26, %struct.mlx5_core_dev** %15, align 8
  %27 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  %28 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %6
  %34 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  %35 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  %39 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECRYPT, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %33, %6
  %44 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)** %14, align 8
  %45 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %46 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %47 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  %50 = call i32 %44(%struct.mlx5_flow_root_namespace* %45, %struct.mlx5_flow_table* %46, %struct.mlx5_flow_group* %47, i32 %48, %struct.fs_fte* %49)
  store i32 %50, i32* %7, align 4
  br label %65

51:                                               ; preds = %33
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %53 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  %54 = call i32 @modify_spec_mailbox(%struct.mlx5_core_dev* %52, %struct.fs_fte* %53, %struct.mailbox_mod* %17)
  %55 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)** %14, align 8
  %56 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %57 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %58 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  %61 = call i32 %55(%struct.mlx5_flow_root_namespace* %56, %struct.mlx5_flow_table* %57, %struct.mlx5_flow_group* %58, i32 %59, %struct.fs_fte* %60)
  store i32 %61, i32* %18, align 4
  %62 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  %63 = call i32 @restore_spec_mailbox(%struct.fs_fte* %62, %struct.mailbox_mod* %17)
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %51, %43
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32) #1

declare dso_local i32 @egress_to_fs_ft(i32) #1

declare dso_local i32 @modify_spec_mailbox(%struct.mlx5_core_dev*, %struct.fs_fte*, %struct.mailbox_mod*) #1

declare dso_local i32 @restore_spec_mailbox(%struct.fs_fte*, %struct.mailbox_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
