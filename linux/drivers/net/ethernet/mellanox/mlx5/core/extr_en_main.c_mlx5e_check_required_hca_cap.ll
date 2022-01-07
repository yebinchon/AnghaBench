; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_check_required_hca_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_check_required_hca_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@eth_net_offloads = common dso_local global i32 0, align 4
@nic_flow_table = common dso_local global i32 0, align 4
@csum_cap = common dso_local global i32 0, align 4
@max_lso_cap = common dso_local global i32 0, align 4
@vlan_cap = common dso_local global i32 0, align 4
@rss_ind_tbl_cap = common dso_local global i32 0, align 4
@flow_table_properties_nic_receive = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [72 x i8] c"Not creating net device, some required device capabilities are missing\0A\00", align 1
@self_lb_en_modifiable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Self loop back prevention is not supported\0A\00", align 1
@cq_moderation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"CQ moderation is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5e_check_required_hca_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_check_required_hca_cap(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %5 = load i32, i32* @port_type, align 4
  %6 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %4, i32 %5)
  %7 = load i64, i64* @MLX5_CAP_PORT_TYPE_ETH, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load i32, i32* @eth_net_offloads, align 4
  %15 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = load i32, i32* @nic_flow_table, align 4
  %20 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %24 = load i32, i32* @csum_cap, align 4
  %25 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = load i32, i32* @max_lso_cap, align 4
  %30 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %34 = load i32, i32* @vlan_cap, align 4
  %35 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = load i32, i32* @rss_ind_tbl_cap, align 4
  %40 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flow_table_properties_nic_receive, i32 0, i32 0), align 4
  %45 = call i32 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev* %43, i32 %44)
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %52

47:                                               ; preds = %42, %37, %32, %27, %22, %17, %12
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %49 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %48, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %69

52:                                               ; preds = %42
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load i32, i32* @self_lb_en_modifiable, align 4
  %55 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %59 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %62 = load i32, i32* @cq_moderation, align 4
  %63 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %67 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %47, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
