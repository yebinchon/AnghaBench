; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_create_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_create_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.mlx5_fpga_ipsec* }
%struct.mlx5_fpga_ipsec = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.fs_fte = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_fpga_ipsec_rule = type { i32, %struct.fs_fte* }
%struct.mailbox_mod = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)* }

@MLX5_FLOW_CONTEXT_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECRYPT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*, i32)* @fpga_ipsec_fs_create_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_ipsec_fs_create_fte(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.mlx5_flow_group* %2, %struct.fs_fte* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca %struct.mlx5_flow_group*, align 8
  %10 = alloca %struct.fs_fte*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)*, align 8
  %13 = alloca %struct.mlx5_core_dev*, align 8
  %14 = alloca %struct.mlx5_fpga_device*, align 8
  %15 = alloca %struct.mlx5_fpga_ipsec*, align 8
  %16 = alloca %struct.mlx5_fpga_ipsec_rule*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mailbox_mod, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %7, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %8, align 8
  store %struct.mlx5_flow_group* %2, %struct.mlx5_flow_group** %9, align 8
  store %struct.fs_fte* %3, %struct.fs_fte** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @egress_to_fs_ft(i32 %21)
  %23 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)** %24, align 8
  store i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)* %25, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)** %12, align 8
  %26 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %26, i32 0, i32 0
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %27, align 8
  store %struct.mlx5_core_dev* %28, %struct.mlx5_core_dev** %13, align 8
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %30, align 8
  store %struct.mlx5_fpga_device* %31, %struct.mlx5_fpga_device** %14, align 8
  %32 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %14, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %32, i32 0, i32 0
  %34 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %33, align 8
  store %struct.mlx5_fpga_ipsec* %34, %struct.mlx5_fpga_ipsec** %15, align 8
  %35 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %36 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %5
  %42 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %43 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  %47 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECRYPT, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %41, %5
  %52 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)** %12, align 8
  %53 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %54 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %55 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %56 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %57 = call i32 %52(%struct.mlx5_flow_root_namespace* %53, %struct.mlx5_flow_table* %54, %struct.mlx5_flow_group* %55, %struct.fs_fte* %56)
  store i32 %57, i32* %6, align 4
  br label %119

58:                                               ; preds = %41
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.mlx5_fpga_ipsec_rule* @kzalloc(i32 16, i32 %59)
  store %struct.mlx5_fpga_ipsec_rule* %60, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %61 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %62 = icmp ne %struct.mlx5_fpga_ipsec_rule* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %119

66:                                               ; preds = %58
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %68 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @mlx5_fpga_ipsec_fs_create_sa_ctx(%struct.mlx5_core_dev* %67, %struct.fs_fte* %68, i32 %69)
  %71 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %72 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, %struct.mlx5_fpga_ipsec_rule* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %74 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, %struct.mlx5_fpga_ipsec_rule* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %80 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, %struct.mlx5_fpga_ipsec_rule* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %20, align 4
  %83 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %84 = call i32 @kfree(%struct.mlx5_fpga_ipsec_rule* %83)
  %85 = load i32, i32* %20, align 4
  store i32 %85, i32* %6, align 4
  br label %119

86:                                               ; preds = %66
  %87 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %88 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %89 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, %struct.mlx5_fpga_ipsec_rule* %88, i32 0, i32 1
  store %struct.fs_fte* %87, %struct.fs_fte** %89, align 8
  %90 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %15, align 8
  %91 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %92 = call i32 @rule_insert(%struct.mlx5_fpga_ipsec* %90, %struct.mlx5_fpga_ipsec_rule* %91)
  %93 = call i32 @WARN_ON(i32 %92)
  %94 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %95 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %96 = call i32 @modify_spec_mailbox(%struct.mlx5_core_dev* %94, %struct.fs_fte* %95, %struct.mailbox_mod* %18)
  %97 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)** %12, align 8
  %98 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %99 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %100 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %101 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %102 = call i32 %97(%struct.mlx5_flow_root_namespace* %98, %struct.mlx5_flow_table* %99, %struct.mlx5_flow_group* %100, %struct.fs_fte* %101)
  store i32 %102, i32* %19, align 4
  %103 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %104 = call i32 @restore_spec_mailbox(%struct.fs_fte* %103, %struct.mailbox_mod* %18)
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %86
  %108 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %15, align 8
  %109 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %110 = call i32 @_rule_delete(%struct.mlx5_fpga_ipsec* %108, %struct.mlx5_fpga_ipsec_rule* %109)
  %111 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %112 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, %struct.mlx5_fpga_ipsec_rule* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mlx5_fpga_ipsec_delete_sa_ctx(i32 %113)
  %115 = load %struct.mlx5_fpga_ipsec_rule*, %struct.mlx5_fpga_ipsec_rule** %16, align 8
  %116 = call i32 @kfree(%struct.mlx5_fpga_ipsec_rule* %115)
  br label %117

117:                                              ; preds = %107, %86
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %78, %63, %51
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32) #1

declare dso_local i32 @egress_to_fs_ft(i32) #1

declare dso_local %struct.mlx5_fpga_ipsec_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_fpga_ipsec_fs_create_sa_ctx(%struct.mlx5_core_dev*, %struct.fs_fte*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_ipsec_rule*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rule_insert(%struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec_rule*) #1

declare dso_local i32 @modify_spec_mailbox(%struct.mlx5_core_dev*, %struct.fs_fte*, %struct.mailbox_mod*) #1

declare dso_local i32 @restore_spec_mailbox(%struct.fs_fte*, %struct.mailbox_mod*) #1

declare dso_local i32 @_rule_delete(%struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec_rule*) #1

declare dso_local i32 @mlx5_fpga_ipsec_delete_sa_ctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
