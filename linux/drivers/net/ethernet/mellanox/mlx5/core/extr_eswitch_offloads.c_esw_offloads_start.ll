; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Can't set offloads mode, SRIOV legacy not enabled\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_ESWITCH_OFFLOADS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed setting eswitch to offloads\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed setting eswitch back to legacy\00", align 1
@MLX5_INLINE_MODE_NONE = common dso_local global i64 0, align 8
@MLX5_INLINE_MODE_L2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Inline mode is different between vports\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.netlink_ext_ack*)* @esw_offloads_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_offloads_start(%struct.mlx5_eswitch* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %8 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call i32 @mlx5_core_is_ecpf_esw_manager(%struct.TYPE_8__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %21 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %13, %2
  %25 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %26 = call i32 @mlx5_eswitch_disable(%struct.mlx5_eswitch* %25)
  %27 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %28 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mlx5_eswitch_update_num_of_vfs(%struct.mlx5_eswitch* %27, i32 %34)
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %37 = load i64, i64* @MLX5_ESWITCH_OFFLOADS, align 8
  %38 = call i32 @mlx5_eswitch_enable(%struct.mlx5_eswitch* %36, i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %24
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %43 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %45 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %46 = call i32 @mlx5_eswitch_enable(%struct.mlx5_eswitch* %44, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %51 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MLX5_INLINE_MODE_NONE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %63 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i64 @mlx5_eswitch_inline_mode_get(%struct.mlx5_eswitch* %61, i64* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i64, i64* @MLX5_INLINE_MODE_L2, align 8
  %69 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %73 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mlx5_core_is_ecpf_esw_manager(%struct.TYPE_8__*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlx5_eswitch_disable(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_eswitch_update_num_of_vfs(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @mlx5_eswitch_enable(%struct.mlx5_eswitch*, i64) #1

declare dso_local i64 @mlx5_eswitch_inline_mode_get(%struct.mlx5_eswitch*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
