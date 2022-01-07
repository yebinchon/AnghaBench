; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@MLX5_ESWITCH_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed setting eswitch to legacy\00", align 1
@MLX5_ESWITCH_OFFLOADS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed setting eswitch back to offloads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.netlink_ext_ack*)* @esw_offloads_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_offloads_stop(%struct.mlx5_eswitch* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.netlink_ext_ack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %4, align 8
  %7 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %8 = call i32 @mlx5_eswitch_disable(%struct.mlx5_eswitch* %7)
  %9 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %10 = load i32, i32* @MLX5_ESWITCH_LEGACY, align 4
  %11 = call i32 @mlx5_eswitch_enable(%struct.mlx5_eswitch* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %4, align 8
  %16 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %18 = load i32, i32* @MLX5_ESWITCH_OFFLOADS, align 4
  %19 = call i32 @mlx5_eswitch_enable(%struct.mlx5_eswitch* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %4, align 8
  %24 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %14
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @mlx5_eswitch_disable(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_eswitch_enable(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
