; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_cmd.c_mlx5dr_cmd_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_cmd.c_mlx5dr_cmd_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5dr_cmd_caps = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@prio_tag_required = common dso_local global i32 0, align 4
@eswitch_manager = common dso_local global i32 0, align 4
@vhca_id = common dso_local global i32 0, align 4
@flex_parser_protocols = common dso_local global i32 0, align 4
@flex_parser_id_icmp_dw0 = common dso_local global i32 0, align 4
@flex_parser_id_icmp_dw1 = common dso_local global i32 0, align 4
@flex_parser_id_icmpv6_dw0 = common dso_local global i32 0, align 4
@flex_parser_id_icmpv6_dw1 = common dso_local global i32 0, align 4
@sw_steering_nic_rx_action_drop_icm_address = common dso_local global i32 0, align 4
@sw_steering_nic_tx_action_drop_icm_address = common dso_local global i32 0, align 4
@sw_steering_nic_tx_action_allow_icm_address = common dso_local global i32 0, align 4
@sw_owner = common dso_local global i32 0, align 4
@max_ft_level = common dso_local global i32 0, align 4
@log_steering_sw_icm_size = common dso_local global i32 0, align 4
@header_modify_sw_icm_start_address = common dso_local global i32 0, align 4
@r_roce_min_src_udp_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_cmd_query_device(%struct.mlx5_core_dev* %0, %struct.mlx5dr_cmd_caps* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5dr_cmd_caps*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5dr_cmd_caps* %1, %struct.mlx5dr_cmd_caps** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @prio_tag_required, align 4
  %7 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %5, i32 %6)
  %8 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %8, i32 0, i32 16
  store i8* %7, i8** %9, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = load i32, i32* @eswitch_manager, align 4
  %12 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %10, i32 %11)
  %13 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %13, i32 0, i32 15
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = load i32, i32* @vhca_id, align 4
  %17 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %15, i32 %16)
  %18 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %18, i32 0, i32 14
  store i8* %17, i8** %19, align 8
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %21 = load i32, i32* @flex_parser_protocols, align 4
  %22 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %23, i32 0, i32 13
  store i8* %22, i8** %24, align 8
  %25 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %26 = call i64 @mlx5dr_matcher_supp_flex_parser_icmp_v4(%struct.mlx5dr_cmd_caps* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %30 = load i32, i32* @flex_parser_id_icmp_dw0, align 4
  %31 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %29, i32 %30)
  %32 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %32, i32 0, i32 12
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %35 = load i32, i32* @flex_parser_id_icmp_dw1, align 4
  %36 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %34, i32 %35)
  %37 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %28, %2
  %40 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %41 = call i64 @mlx5dr_matcher_supp_flex_parser_icmp_v6(%struct.mlx5dr_cmd_caps* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %45 = load i32, i32* @flex_parser_id_icmpv6_dw0, align 4
  %46 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %44, i32 %45)
  %47 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %47, i32 0, i32 10
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %50 = load i32, i32* @flex_parser_id_icmpv6_dw1, align 4
  %51 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %49, i32 %50)
  %52 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %43, %39
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %56 = load i32, i32* @sw_steering_nic_rx_action_drop_icm_address, align 4
  %57 = call i8* @MLX5_CAP64_FLOWTABLE(%struct.mlx5_core_dev* %55, i32 %56)
  %58 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %61 = load i32, i32* @sw_steering_nic_tx_action_drop_icm_address, align 4
  %62 = call i8* @MLX5_CAP64_FLOWTABLE(%struct.mlx5_core_dev* %60, i32 %61)
  %63 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %66 = load i32, i32* @sw_steering_nic_tx_action_allow_icm_address, align 4
  %67 = call i8* @MLX5_CAP64_FLOWTABLE(%struct.mlx5_core_dev* %65, i32 %66)
  %68 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %69 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %71 = load i32, i32* @sw_owner, align 4
  %72 = call i8* @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev* %70, i32 %71)
  %73 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %76 = load i32, i32* @max_ft_level, align 4
  %77 = call i8* @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev* %75, i32 %76)
  %78 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %79 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %81 = load i32, i32* @sw_owner, align 4
  %82 = call i32 @MLX5_CAP_FLOWTABLE_NIC_TX(%struct.mlx5_core_dev* %80, i32 %81)
  %83 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %86 = load i32, i32* @log_steering_sw_icm_size, align 4
  %87 = call i32 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev* %85, i32 %86)
  %88 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %91 = load i32, i32* @header_modify_sw_icm_start_address, align 4
  %92 = call i32 @MLX5_CAP64_DEV_MEM(%struct.mlx5_core_dev* %90, i32 %91)
  %93 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %94 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %96 = load i32, i32* @r_roce_min_src_udp_port, align 4
  %97 = call i32 @MLX5_CAP_ROCE(%struct.mlx5_core_dev* %95, i32 %96)
  %98 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %99 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  ret i32 0
}

declare dso_local i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @mlx5dr_matcher_supp_flex_parser_icmp_v4(%struct.mlx5dr_cmd_caps*) #1

declare dso_local i64 @mlx5dr_matcher_supp_flex_parser_icmp_v6(%struct.mlx5dr_cmd_caps*) #1

declare dso_local i8* @MLX5_CAP64_FLOWTABLE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_TX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP64_DEV_MEM(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_ROCE(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
