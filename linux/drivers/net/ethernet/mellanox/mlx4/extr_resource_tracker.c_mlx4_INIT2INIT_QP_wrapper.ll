; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_INIT2INIT_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_INIT2INIT_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_INIT2INIT_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vhcr*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_info*, align 8
  %13 = alloca %struct.mlx4_qp_context*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %9, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %10, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %12, align 8
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %15 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %14, i32 0, i32 0
  %16 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %17 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %16, i64 8
  store %struct.mlx4_qp_context* %17, %struct.mlx4_qp_context** %13, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %19 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %20 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %21 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %18, %struct.mlx4_vhcr* %19, %struct.mlx4_qp_context* %20)
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %25 = call i32 @update_pkey_index(%struct.mlx4_dev* %22, i32 %23, %struct.mlx4_cmd_mailbox* %24)
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %30 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %31 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %12, align 8
  %32 = call i32 @mlx4_GEN_QP_wrapper(%struct.mlx4_dev* %26, i32 %27, %struct.mlx4_vhcr* %28, %struct.mlx4_cmd_mailbox* %29, %struct.mlx4_cmd_mailbox* %30, %struct.mlx4_cmd_info* %31)
  ret i32 %32
}

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_GEN_QP_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
