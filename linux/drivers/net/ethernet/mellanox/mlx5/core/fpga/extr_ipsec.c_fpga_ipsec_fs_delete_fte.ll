; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_delete_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_delete_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.mlx5_fpga_ipsec* }
%struct.mlx5_fpga_ipsec = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.fs_fte = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_fpga_ipsec_rule = type { i32 }
%struct.mailbox_mod = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)* }

@MLX5_FLOW_CONTEXT_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECRYPT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*, i32)* @fpga_ipsec_fs_delete_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_ipsec_fs_delete_fte(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.fs_fte* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %7 = alloca %struct.mlx5_flow_table*, align 8
  %8 = alloca %struct.fs_fte*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)*, align 8
  %11 = alloca %struct.mlx5_core_dev*, align 8
  %12 = alloca %struct.mlx5_fpga_device*, align 8
  %13 = alloca %struct.mlx5_fpga_ipsec*, align 8
  %14 = alloca %struct.mlx5_fpga_ipsec_rule*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mailbox_mod, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %6, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %7, align 8
  store %struct.fs_fte* %2, %struct.fs_fte** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @egress_to_fs_ft(i32 %18)
  %20 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)** %21, align 8
  store i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)* %22, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)** %10, align 8
  %23 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %23, i32 0, i32 0
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %24, align 8
  store %struct.mlx5_core_dev* %25, %struct.mlx5_core_dev** %11, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %27 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %26, i32 0, i32 0
  %28 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %27, align 8
  store %struct.mlx5_fpga_device* %28, %struct.mlx5_fpga_device** %12, align 8
  %29 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %12, align 8
  %30 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %29, i32 0, i32 0
  %31 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %30, align 8
  store %struct.mlx5_fpga_ipsec* %31, %struct.mlx5_fpga_ipsec** %13, align 8
  %32 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %33 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %4
  %39 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %40 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  %44 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECRYPT, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %38, %4
  %49 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)** %10, align 8
  %50 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %51 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %52 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %53 = call i32 %49(%struct.mlx5_flow_root_namespace* %50, %struct.mlx5_flow_table* %51, %struct.fs_fte* %52)
  store i32 %53, i32* %5, align 4
  br label %82

54:                                               ; preds = %38
  %55 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %13, align 8
  %56 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %57 = call %struct.mlx5_fpga_ipsec_rule* @rule_search(%struct.mlx5_fpga_ipsec* %55, %struct.fs_fte* %56)
  store %struct.mlx5_fpga_ipsec_rule* %57, %struct.mlx5_fpga_ipsec_rule** %14, align 8
  %58 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %14, align 8
  %59 = icmp ne %struct.mlx5_fpga_ipsec_rule* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %82

63:                                               ; preds = %54
  %64 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %14, align 8
  %65 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, %struct.mlx5_fpga_ipsec_rule* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mlx5_fpga_ipsec_delete_sa_ctx(i32 %66)
  %68 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %13, align 8
  %69 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %14, align 8
  %70 = call i32 @rule_delete(%struct.mlx5_fpga_ipsec* %68, %struct.mlx5_fpga_ipsec_rule* %69)
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %72 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %73 = call i32 @modify_spec_mailbox(%struct.mlx5_core_dev* %71, %struct.fs_fte* %72, %struct.mailbox_mod* %16)
  %74 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)** %10, align 8
  %75 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %76 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %77 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %78 = call i32 %74(%struct.mlx5_flow_root_namespace* %75, %struct.mlx5_flow_table* %76, %struct.fs_fte* %77)
  store i32 %78, i32* %17, align 4
  %79 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %80 = call i32 @restore_spec_mailbox(%struct.fs_fte* %79, %struct.mailbox_mod* %16)
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %63, %60, %48
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32) #1

declare dso_local i32 @egress_to_fs_ft(i32) #1

declare dso_local %struct.mlx5_fpga_ipsec_rule* @rule_search(%struct.mlx5_fpga_ipsec*, %struct.fs_fte*) #1

declare dso_local i32 @mlx5_fpga_ipsec_delete_sa_ctx(i32) #1

declare dso_local i32 @rule_delete(%struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec_rule*) #1

declare dso_local i32 @modify_spec_mailbox(%struct.mlx5_core_dev*, %struct.fs_fte*, %struct.mailbox_mod*) #1

declare dso_local i32 @restore_spec_mailbox(%struct.fs_fte*, %struct.mailbox_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
