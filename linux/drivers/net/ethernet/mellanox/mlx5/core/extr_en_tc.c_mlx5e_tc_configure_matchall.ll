; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_configure_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_configure_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.tc_cls_matchall_offload = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"only priority 1 is supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_tc_configure_matchall(%struct.mlx5e_priv* %0, %struct.tc_cls_matchall_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.tc_cls_matchall_offload*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %5, align 8
  %8 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %5, align 8
  %9 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  store %struct.netlink_ext_ack* %11, %struct.netlink_ext_ack** %6, align 8
  %12 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %5, align 8
  %13 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @TC_H_MAJ(i32 %15)
  %17 = ashr i32 %16, 16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %22 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %27 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %5, align 8
  %28 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %32 = call i32 @scan_tc_matchall_fdb_actions(%struct.mlx5e_priv* %26, i32* %30, %struct.netlink_ext_ack* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @scan_tc_matchall_fdb_actions(%struct.mlx5e_priv*, i32*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
